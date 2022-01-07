
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_22__ {int ival; int nval; } ;
struct TYPE_26__ {TYPE_1__ u; } ;
typedef TYPE_5__ expdesc ;
struct TYPE_28__ {TYPE_4__* f; } ;
struct TYPE_23__ {int ts; int i; int r; } ;
struct TYPE_24__ {int token; TYPE_2__ seminfo; } ;
struct TYPE_27__ {int linenumber; TYPE_7__* fs; TYPE_3__ t; } ;
struct TYPE_25__ {int is_vararg; } ;
typedef TYPE_6__ LexState ;
typedef TYPE_7__ FuncState ;


 int OP_VARARG ;
 int VFALSE ;
 int VKFLT ;
 int VKINT ;
 int VNIL ;
 int VTRUE ;
 int VVARARG ;
 int body (TYPE_6__*,TYPE_5__*,int ,int ) ;
 int check_condition (TYPE_6__*,int ,char*) ;
 int codestring (TYPE_6__*,TYPE_5__*,int ) ;
 int constructor (TYPE_6__*,TYPE_5__*) ;
 int init_exp (TYPE_5__*,int ,int ) ;
 int luaK_codeABC (TYPE_7__*,int ,int ,int,int ) ;
 int luaX_next (TYPE_6__*) ;
 int suffixedexp (TYPE_6__*,TYPE_5__*) ;

__attribute__((used)) static void simpleexp (LexState *ls, expdesc *v) {


  switch (ls->t.token) {
    case 133: {
      init_exp(v, VKFLT, 0);
      v->u.nval = ls->t.seminfo.r;
      break;
    }
    case 131: {
      init_exp(v, VKINT, 0);
      v->u.ival = ls->t.seminfo.i;
      break;
    }
    case 129: {
      codestring(ls, v, ls->t.seminfo.ts);
      break;
    }
    case 130: {
      init_exp(v, VNIL, 0);
      break;
    }
    case 128: {
      init_exp(v, VTRUE, 0);
      break;
    }
    case 134: {
      init_exp(v, VFALSE, 0);
      break;
    }
    case 135: {
      FuncState *fs = ls->fs;
      check_condition(ls, fs->f->is_vararg,
                      "cannot use '...' outside a vararg function");
      init_exp(v, VVARARG, luaK_codeABC(fs, OP_VARARG, 0, 1, 0));
      break;
    }
    case '{': {
      constructor(ls, v);
      return;
    }
    case 132: {
      luaX_next(ls);
      body(ls, v, 0, ls->linenumber);
      return;
    }
    default: {
      suffixedexp(ls, v);
      return;
    }
  }
  luaX_next(ls);
}
