
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ nval; } ;
struct TYPE_10__ {TYPE_1__ u; int k; int f; int t; } ;
typedef TYPE_2__ expdesc ;
typedef int UnOpr ;
typedef int FuncState ;


 int NO_JUMP ;



 int OP_LEN ;
 int OP_UNM ;
 int VKNUM ;
 int codearith (int *,int ,TYPE_2__*,TYPE_2__*,int) ;
 int codenot (int *,TYPE_2__*) ;
 int isnumeral (TYPE_2__*) ;
 int luaK_exp2anyreg (int *,TYPE_2__*) ;
 int lua_assert (int ) ;
 scalar_t__ luai_numunm (int *,scalar_t__) ;

void luaK_prefix (FuncState *fs, UnOpr op, expdesc *e, int line) {
  expdesc e2;
  e2.t = e2.f = NO_JUMP; e2.k = VKNUM; e2.u.nval = 0;
  switch (op) {
    case 129: {
      if (isnumeral(e))
        e->u.nval = luai_numunm(((void*)0), e->u.nval);
      else {
        luaK_exp2anyreg(fs, e);
        codearith(fs, OP_UNM, e, &e2, line);
      }
      break;
    }
    case 128: codenot(fs, e); break;
    case 130: {
      luaK_exp2anyreg(fs, e);
      codearith(fs, OP_LEN, e, &e2, line);
      break;
    }
    default: lua_assert(0);
  }
}
