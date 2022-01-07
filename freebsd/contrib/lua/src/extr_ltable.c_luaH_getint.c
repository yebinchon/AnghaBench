
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_Integer ;
struct TYPE_4__ {int sizearray; int const* array; } ;
typedef TYPE_1__ Table ;
typedef int TValue ;
typedef int Node ;


 int gkey (int *) ;
 int gnext (int *) ;
 int const* gval (int *) ;
 int * hashint (TYPE_1__*,int) ;
 int ivalue (int ) ;
 int l_castS2U (int) ;
 int const* luaO_nilobject ;
 scalar_t__ ttisinteger (int ) ;

const TValue *luaH_getint (Table *t, lua_Integer key) {

  if (l_castS2U(key) - 1 < t->sizearray)
    return &t->array[key - 1];
  else {
    Node *n = hashint(t, key);
    for (;;) {
      if (ttisinteger(gkey(n)) && ivalue(gkey(n)) == key)
        return gval(n);
      else {
        int nx = gnext(n);
        if (nx == 0) break;
        n += nx;
      }
    }
    return luaO_nilobject;
  }
}
