
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


struct TYPE_27__ {int info; } ;
struct TYPE_28__ {scalar_t__ k; TYPE_3__ u; } ;
typedef TYPE_4__ expdesc ;
struct TYPE_30__ {int freereg; } ;
struct TYPE_25__ {int ts; } ;
struct TYPE_26__ {int token; TYPE_1__ seminfo; } ;
struct TYPE_29__ {TYPE_2__ t; TYPE_6__* fs; } ;
typedef TYPE_5__ LexState ;
typedef TYPE_6__ FuncState ;


 int LUA_MULTRET ;
 int OP_CALL ;

 int VCALL ;
 scalar_t__ VNONRELOC ;
 scalar_t__ VVOID ;
 int check_match (TYPE_5__*,char,char,int) ;
 int codestring (TYPE_5__*,TYPE_4__*,int ) ;
 int constructor (TYPE_5__*,TYPE_4__*) ;
 int explist (TYPE_5__*,TYPE_4__*) ;
 scalar_t__ hasmultret (scalar_t__) ;
 int init_exp (TYPE_4__*,int ,int ) ;
 int luaK_codeABC (TYPE_6__*,int ,int,int,int) ;
 int luaK_exp2nextreg (TYPE_6__*,TYPE_4__*) ;
 int luaK_fixline (TYPE_6__*,int) ;
 int luaK_setmultret (TYPE_6__*,TYPE_4__*) ;
 int luaX_next (TYPE_5__*) ;
 int luaX_syntaxerror (TYPE_5__*,char*) ;
 int lua_assert (int) ;

__attribute__((used)) static void funcargs (LexState *ls, expdesc *f, int line) {
  FuncState *fs = ls->fs;
  expdesc args;
  int base, nparams;
  switch (ls->t.token) {
    case '(': {
      luaX_next(ls);
      if (ls->t.token == ')')
        args.k = VVOID;
      else {
        explist(ls, &args);
        luaK_setmultret(fs, &args);
      }
      check_match(ls, ')', '(', line);
      break;
    }
    case '{': {
      constructor(ls, &args);
      break;
    }
    case 128: {
      codestring(ls, &args, ls->t.seminfo.ts);
      luaX_next(ls);
      break;
    }
    default: {
      luaX_syntaxerror(ls, "function arguments expected");
    }
  }
  lua_assert(f->k == VNONRELOC);
  base = f->u.info;
  if (hasmultret(args.k))
    nparams = LUA_MULTRET;
  else {
    if (args.k != VVOID)
      luaK_exp2nextreg(fs, &args);
    nparams = fs->freereg - (base+1);
  }
  init_exp(f, VCALL, luaK_codeABC(fs, OP_CALL, base, nparams+1, 2));
  luaK_fixline(fs, line);
  fs->freereg = base+1;

}
