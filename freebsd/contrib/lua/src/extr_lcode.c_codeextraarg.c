
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FuncState ;


 int CREATE_Ax (int ,int) ;
 int MAXARG_Ax ;
 int OP_EXTRAARG ;
 int luaK_code (int *,int ) ;
 int lua_assert (int) ;

__attribute__((used)) static int codeextraarg (FuncState *fs, int a) {
  lua_assert(a <= MAXARG_Ax);
  return luaK_code(fs, CREATE_Ax(OP_EXTRAARG, a));
}
