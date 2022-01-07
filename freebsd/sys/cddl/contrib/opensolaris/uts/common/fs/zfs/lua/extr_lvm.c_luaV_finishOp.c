
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int top; TYPE_4__* ci; } ;
typedef TYPE_3__ lua_State ;
struct TYPE_10__ {int base; int * savedpc; } ;
struct TYPE_11__ {TYPE_1__ l; } ;
struct TYPE_13__ {int top; TYPE_2__ u; } ;
typedef int StkId ;
typedef int OpCode ;
typedef int Instruction ;
typedef TYPE_4__ CallInfo ;


 int GETARG_A (int ) ;
 int GETARG_B (int ) ;
 int GETARG_C (int ) ;
 int GET_OPCODE (int ) ;
 int ISK (int) ;







 int OP_JMP ;
 int OP_TFORLOOP ;

 int TM_LE ;
 int cast_int (scalar_t__) ;
 int l_isfalse (int ) ;
 int luaT_gettmbyobj (TYPE_3__*,int,int ) ;
 int luaV_concat (TYPE_3__*,int) ;
 int lua_assert (int) ;
 int setobj2s (TYPE_3__*,int,int) ;
 int setobjs2s (TYPE_3__*,int,int ) ;
 int ttisnil (int ) ;

void luaV_finishOp (lua_State *L) {
  CallInfo *ci = L->ci;
  StkId base = ci->u.l.base;
  Instruction inst = *(ci->u.l.savedpc - 1);
  OpCode op = GET_OPCODE(inst);
  switch (op) {
    case 147: case 131: case 136: case 144:
    case 137: case 135: case 128: case 139:
    case 141: case 142: case 134: {
      setobjs2s(L, base + GETARG_A(inst), --L->top);
      break;
    }
    case 140: case 138: case 143: {
      int res = !l_isfalse(L->top - 1);
      L->top--;

      lua_assert(!ISK(GETARG_B(inst)));
      if (op == 140 &&
          ttisnil(luaT_gettmbyobj(L, base + GETARG_B(inst), TM_LE)))
        res = !res;
      lua_assert(GET_OPCODE(*ci->u.l.savedpc) == OP_JMP);
      if (res != GETARG_A(inst))
        ci->u.l.savedpc++;
      break;
    }
    case 145: {
      StkId top = L->top - 1;
      int b = GETARG_B(inst);
      int total = cast_int(top - 1 - (base + b));
      setobj2s(L, top - 2, top);
      if (total > 1) {
        L->top = top - 1;
        luaV_concat(L, total);
      }

      setobj2s(L, ci->u.l.base + GETARG_A(inst), L->top - 1);
      L->top = ci->top;
      break;
    }
    case 129: {
      lua_assert(GET_OPCODE(*ci->u.l.savedpc) == OP_TFORLOOP);
      L->top = ci->top;
      break;
    }
    case 146: {
      if (GETARG_C(inst) - 1 >= 0)
        L->top = ci->top;
      break;
    }
    case 130: case 132: case 133:
      break;
    default: lua_assert(0);
  }
}
