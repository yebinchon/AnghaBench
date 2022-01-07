
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {int metatable; } ;
typedef TYPE_1__ Table ;
struct TYPE_6__ {int len; } ;
typedef int TValue ;
typedef int StkId ;




 int TM_LEN ;
 int callTM (int *,int const*,int const*,int const*,int ,int) ;
 int cast_num (int ) ;
 int * fasttm (int *,int ,int ) ;
 TYPE_1__* hvalue (int const*) ;
 int luaG_typeerror (int *,int const*,char*) ;
 int luaH_getn (TYPE_1__*) ;
 int * luaT_gettmbyobj (int *,int const*,int ) ;
 int setnvalue (int ,int ) ;
 TYPE_2__* tsvalue (int const*) ;
 int ttisnil (int const*) ;
 int ttypenv (int const*) ;

void luaV_objlen (lua_State *L, StkId ra, const TValue *rb) {
  const TValue *tm;
  switch (ttypenv(rb)) {
    case 128: {
      Table *h = hvalue(rb);
      tm = fasttm(L, h->metatable, TM_LEN);
      if (tm) break;
      setnvalue(ra, cast_num(luaH_getn(h)));
      return;
    }
    case 129: {
      setnvalue(ra, cast_num(tsvalue(rb)->len));
      return;
    }
    default: {
      tm = luaT_gettmbyobj(L, rb, TM_LEN);
      if (ttisnil(tm))
        luaG_typeerror(L, rb, "get length of");
      break;
    }
  }
  callTM(L, tm, rb, rb, ra, 1);
}
