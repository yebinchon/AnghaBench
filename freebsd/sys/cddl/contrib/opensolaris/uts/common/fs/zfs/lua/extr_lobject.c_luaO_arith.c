
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_Number ;
 int lua_assert (int ) ;
 int luai_numadd (int *,int ,int ) ;
 int luai_numdiv (int *,int ,int ) ;
 int luai_nummod (int *,int ,int ) ;
 int luai_nummul (int *,int ,int ) ;
 int luai_numpow (int *,int ,int ) ;
 int luai_numsub (int *,int ,int ) ;
 int luai_numunm (int *,int ) ;

lua_Number luaO_arith (int op, lua_Number v1, lua_Number v2) {
  switch (op) {
    case 134: return luai_numadd(((void*)0), v1, v2);
    case 129: return luai_numsub(((void*)0), v1, v2);
    case 131: return luai_nummul(((void*)0), v1, v2);
    case 133: return luai_numdiv(((void*)0), v1, v2);
    case 132: return luai_nummod(((void*)0), v1, v2);
    case 130: return luai_numpow(((void*)0), v1, v2);
    case 128: return luai_numunm(((void*)0), v1);
    default: lua_assert(0); return 0;
  }
}
