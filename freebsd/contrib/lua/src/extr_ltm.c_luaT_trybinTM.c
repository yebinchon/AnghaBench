
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Number ;
typedef int TValue ;
typedef int TMS ;
typedef int StkId ;
 int luaG_concaterror (int *,int const*,int const*) ;
 int luaG_opinterror (int *,int const*,int const*,char*) ;
 int luaG_tointerror (int *,int const*,int const*) ;
 int luaT_callbinTM (int *,int const*,int const*,int ,int) ;
 int tonumber (int const*,int *) ;

void luaT_trybinTM (lua_State *L, const TValue *p1, const TValue *p2,
                    StkId res, TMS event) {
  if (!luaT_callbinTM(L, p1, p2, res, event)) {
    switch (event) {
      case 130:
        luaG_concaterror(L, p1, p2);

      case 134: case 132: case 131:
      case 129: case 128: case 133: {
        lua_Number dummy;
        if (tonumber(p1, &dummy) && tonumber(p2, &dummy))
          luaG_tointerror(L, p1, p2);
        else
          luaG_opinterror(L, p1, p2, "perform bitwise operation on");
      }

      default:
        luaG_opinterror(L, p1, p2, "perform arithmetic on");
    }
  }
}
