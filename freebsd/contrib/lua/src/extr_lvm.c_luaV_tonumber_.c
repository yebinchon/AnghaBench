
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_Number ;
typedef int TValue ;


 int cast_num (int ) ;
 scalar_t__ cvt2num (int const*) ;
 int ivalue (int const*) ;
 scalar_t__ luaO_str2num (int ,int *) ;
 int nvalue (int *) ;
 int svalue (int const*) ;
 scalar_t__ ttisinteger (int const*) ;
 scalar_t__ vslen (int const*) ;

int luaV_tonumber_ (const TValue *obj, lua_Number *n) {
  TValue v;
  if (ttisinteger(obj)) {
    *n = cast_num(ivalue(obj));
    return 1;
  }
  else if (cvt2num(obj) &&
            luaO_str2num(svalue(obj), &v) == vslen(obj) + 1) {
    *n = nvalue(&v);
    return 1;
  }
  else
    return 0;
}
