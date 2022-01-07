
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_6__ {int sizearray; int * array; } ;
typedef TYPE_1__ Table ;
typedef scalar_t__ StkId ;


 int cast_num (int) ;
 int findindex (int *,TYPE_1__*,scalar_t__) ;
 int * gkey (int ) ;
 int gnode (TYPE_1__*,int) ;
 int * gval (int ) ;
 int setnvalue (scalar_t__,int ) ;
 int setobj2s (int *,scalar_t__,int *) ;
 int sizenode (TYPE_1__*) ;
 int ttisnil (int *) ;

int luaH_next (lua_State *L, Table *t, StkId key) {
  int i = findindex(L, t, key);
  for (i++; i < t->sizearray; i++) {
    if (!ttisnil(&t->array[i])) {
      setnvalue(key, cast_num(i+1));
      setobj2s(L, key+1, &t->array[i]);
      return 1;
    }
  }
  for (i -= t->sizearray; i < sizenode(t); i++) {
    if (!ttisnil(gval(gnode(t, i)))) {
      setobj2s(L, key, gkey(gnode(t, i)));
      setobj2s(L, key+1, gval(gnode(t, i)));
      return 1;
    }
  }
  return 0;
}
