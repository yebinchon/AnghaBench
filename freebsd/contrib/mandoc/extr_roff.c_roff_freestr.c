
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct roffkv* p; } ;
struct TYPE_3__ {struct roffkv* p; } ;
struct roffkv {struct roffkv* next; TYPE_2__ val; TYPE_1__ key; } ;


 int free (struct roffkv*) ;

__attribute__((used)) static void
roff_freestr(struct roffkv *r)
{
 struct roffkv *n, *nn;

 for (n = r; n; n = nn) {
  free(n->key.p);
  free(n->val.p);
  nn = n->next;
  free(n);
 }
}
