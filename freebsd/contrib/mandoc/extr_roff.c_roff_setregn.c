
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t sz; int p; } ;
struct roffreg {int val; int step; struct roffreg* next; TYPE_1__ key; } ;
struct roff {struct roffreg* regtab; } ;


 int INT_MIN ;
 struct roffreg* mandoc_malloc (int) ;
 int mandoc_strndup (char const*,size_t) ;
 scalar_t__ strncmp (int ,char const*,size_t) ;

__attribute__((used)) static void
roff_setregn(struct roff *r, const char *name, size_t len,
    int val, char sign, int step)
{
 struct roffreg *reg;


 reg = r->regtab;

 while (reg != ((void*)0) && (reg->key.sz != len ||
     strncmp(reg->key.p, name, len) != 0))
  reg = reg->next;

 if (((void*)0) == reg) {

  reg = mandoc_malloc(sizeof(struct roffreg));
  reg->key.p = mandoc_strndup(name, len);
  reg->key.sz = len;
  reg->val = 0;
  reg->step = 0;
  reg->next = r->regtab;
  r->regtab = reg;
 }

 if ('+' == sign)
  reg->val += val;
 else if ('-' == sign)
  reg->val -= val;
 else
  reg->val = val;
 if (step != INT_MIN)
  reg->step = step;
}
