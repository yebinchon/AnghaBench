
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int expdesc ;
struct TYPE_10__ {int token; } ;
struct TYPE_11__ {int linenumber; TYPE_1__ t; int * fs; } ;
typedef TYPE_2__ LexState ;
typedef int FuncState ;



 int checkname (TYPE_2__*,int *) ;
 int fieldsel (TYPE_2__*,int *) ;
 int funcargs (TYPE_2__*,int *,int) ;
 int luaK_exp2anyregup (int *,int *) ;
 int luaK_exp2nextreg (int *,int *) ;
 int luaK_indexed (int *,int *,int *) ;
 int luaK_self (int *,int *,int *) ;
 int luaX_next (TYPE_2__*) ;
 int primaryexp (TYPE_2__*,int *) ;
 int yindex (TYPE_2__*,int *) ;

__attribute__((used)) static void suffixedexp (LexState *ls, expdesc *v) {


  FuncState *fs = ls->fs;
  int line = ls->linenumber;
  primaryexp(ls, v);
  for (;;) {
    switch (ls->t.token) {
      case '.': {
        fieldsel(ls, v);
        break;
      }
      case '[': {
        expdesc key;
        luaK_exp2anyregup(fs, v);
        yindex(ls, &key);
        luaK_indexed(fs, v, &key);
        break;
      }
      case ':': {
        expdesc key;
        luaX_next(ls);
        checkname(ls, &key);
        luaK_self(fs, v, &key);
        funcargs(ls, v, line);
        break;
      }
      case '(': case 128: case '{': {
        luaK_exp2nextreg(fs, v);
        funcargs(ls, v, line);
        break;
      }
      default: return;
    }
  }
}
