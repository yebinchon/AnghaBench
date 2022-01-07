
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int info; } ;
struct TYPE_15__ {TYPE_1__ u; int k; int t; int f; } ;
typedef TYPE_2__ expdesc ;
typedef int FuncState ;
typedef int BinOpr ;


 int GETARG_B (int ) ;
 int GET_OPCODE (int ) ;
 int NO_JUMP ;
 scalar_t__ OP_ADD ;
 int OP_CONCAT ;
 scalar_t__ OP_EQ ;
 int OpCode ;
 int SETARG_B (int ,int ) ;
 int VRELOCABLE ;
 int cast (int ,scalar_t__) ;
 int codearith (int *,int ,TYPE_2__*,TYPE_2__*,int) ;
 int codecomp (int *,int ,int,TYPE_2__*,TYPE_2__*) ;
 int freeexp (int *,TYPE_2__*) ;
 int getcode (int *,TYPE_2__*) ;
 int luaK_concat (int *,int *,int ) ;
 int luaK_dischargevars (int *,TYPE_2__*) ;
 int luaK_exp2nextreg (int *,TYPE_2__*) ;
 int luaK_exp2val (int *,TYPE_2__*) ;
 int lua_assert (int) ;

void luaK_posfix (FuncState *fs, BinOpr op,
                  expdesc *e1, expdesc *e2, int line) {
  switch (op) {
    case 141: {
      lua_assert(e1->t == NO_JUMP);
      luaK_dischargevars(fs, e2);
      luaK_concat(fs, &e2->f, e1->f);
      *e1 = *e2;
      break;
    }
    case 130: {
      lua_assert(e1->f == NO_JUMP);
      luaK_dischargevars(fs, e2);
      luaK_concat(fs, &e2->t, e1->t);
      *e1 = *e2;
      break;
    }
    case 140: {
      luaK_exp2val(fs, e2);
      if (e2->k == VRELOCABLE && GET_OPCODE(getcode(fs, e2)) == OP_CONCAT) {
        lua_assert(e1->u.info == GETARG_B(getcode(fs, e2))-1);
        freeexp(fs, e1);
        SETARG_B(getcode(fs, e2), e1->u.info);
        e1->k = VRELOCABLE; e1->u.info = e2->u.info;
      }
      else {
        luaK_exp2nextreg(fs, e2);
        codearith(fs, OP_CONCAT, e1, e2, line);
      }
      break;
    }
    case 142: case 128: case 132: case 139:
    case 133: case 129: {
      codearith(fs, cast(OpCode, op - 142 + OP_ADD), e1, e2, line);
      break;
    }
    case 138: case 134: case 135: {
      codecomp(fs, cast(OpCode, op - 138 + OP_EQ), 1, e1, e2);
      break;
    }
    case 131: case 136: case 137: {
      codecomp(fs, cast(OpCode, op - 131 + OP_EQ), 0, e1, e2);
      break;
    }
    default: lua_assert(0);
  }
}
