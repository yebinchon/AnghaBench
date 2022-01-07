
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * node; } ;
typedef TYPE_1__ Table ;
typedef int Node ;


 scalar_t__ countint (int ,int*) ;
 int gkey (int *) ;
 int gval (int *) ;
 int sizenode (TYPE_1__ const*) ;
 int ttisnil (int ) ;

__attribute__((used)) static int numusehash (const Table *t, int *nums, int *pnasize) {
  int totaluse = 0;
  int ause = 0;
  int i = sizenode(t);
  while (i--) {
    Node *n = &t->node[i];
    if (!ttisnil(gval(n))) {
      ause += countint(gkey(n), nums);
      totaluse++;
    }
  }
  *pnasize += ause;
  return totaluse;
}
