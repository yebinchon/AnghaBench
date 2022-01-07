
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int sizearray; int node; int * array; } ;
typedef TYPE_1__ Table ;


 scalar_t__ isdummy (int ) ;
 scalar_t__ ttisnil (int *) ;
 int unbound_search (TYPE_1__*,unsigned int) ;

int luaH_getn (Table *t) {
  unsigned int j = t->sizearray;
  if (j > 0 && ttisnil(&t->array[j - 1])) {

    unsigned int i = 0;
    while (j - i > 1) {
      unsigned int m = (i+j)/2;
      if (ttisnil(&t->array[m - 1])) j = m;
      else i = m;
    }
    return i;
  }

  else if (isdummy(t->node))
    return j;
  else return unbound_search(t, j);
}
