
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int expdesc ;
typedef int FuncState ;
typedef int BinOpr ;
 int isnumeral (int *) ;
 int luaK_exp2RK (int *,int *) ;
 int luaK_exp2nextreg (int *,int *) ;
 int luaK_goiffalse (int *,int *) ;
 int luaK_goiftrue (int *,int *) ;

void luaK_infix (FuncState *fs, BinOpr op, expdesc *v) {
  switch (op) {
    case 135: {
      luaK_goiftrue(fs, v);
      break;
    }
    case 130: {
      luaK_goiffalse(fs, v);
      break;
    }
    case 134: {
      luaK_exp2nextreg(fs, v);
      break;
    }
    case 136: case 128: case 131: case 133:
    case 132: case 129: {
      if (!isnumeral(v)) luaK_exp2RK(fs, v);
      break;
    }
    default: {
      luaK_exp2RK(fs, v);
      break;
    }
  }
}
