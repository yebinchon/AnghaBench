
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t sz; int p; } ;
struct roffreg {int val; int step; TYPE_1__ key; struct roffreg* next; } ;
struct roff {struct roffreg* regtab; } ;


 int INT_MIN ;
 int roff_getregro (struct roff*,char const*) ;
 int roff_setregn (struct roff*,char const*,size_t,int ,char,int ) ;
 scalar_t__ strncmp (char const*,int ,size_t) ;

__attribute__((used)) static int
roff_getregn(struct roff *r, const char *name, size_t len, char sign)
{
 struct roffreg *reg;
 int val;

 if ('.' == name[0] && 2 == len) {
  val = roff_getregro(r, name + 1);
  if (-1 != val)
   return val;
 }

 for (reg = r->regtab; reg; reg = reg->next) {
  if (len == reg->key.sz &&
      0 == strncmp(name, reg->key.p, len)) {
   switch (sign) {
   case '+':
    reg->val += reg->step;
    break;
   case '-':
    reg->val -= reg->step;
    break;
   default:
    break;
   }
   return reg->val;
  }
 }

 roff_setregn(r, name, len, 0, '\0', INT_MIN);
 return 0;
}
