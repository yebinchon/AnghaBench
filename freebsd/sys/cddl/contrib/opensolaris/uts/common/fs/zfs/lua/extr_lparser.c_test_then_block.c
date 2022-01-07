
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int f; int t; } ;
typedef TYPE_2__ expdesc ;
struct TYPE_15__ {scalar_t__ token; } ;
struct TYPE_17__ {TYPE_1__ t; int * fs; } ;
typedef TYPE_3__ LexState ;
typedef int FuncState ;
typedef int BlockCnt ;


 scalar_t__ TK_BREAK ;
 scalar_t__ TK_ELSE ;
 scalar_t__ TK_ELSEIF ;
 scalar_t__ TK_GOTO ;
 int TK_THEN ;
 scalar_t__ block_follow (TYPE_3__*,int ) ;
 int checknext (TYPE_3__*,int ) ;
 int enterblock (int *,int *,int ) ;
 int expr (TYPE_3__*,TYPE_2__*) ;
 int gotostat (TYPE_3__*,int ) ;
 int leaveblock (int *) ;
 int luaK_concat (int *,int*,int) ;
 int luaK_goiffalse (int *,TYPE_2__*) ;
 int luaK_goiftrue (int *,TYPE_2__*) ;
 int luaK_jump (int *) ;
 int luaK_patchtohere (int *,int) ;
 int luaX_next (TYPE_3__*) ;
 int skipnoopstat (TYPE_3__*) ;
 int statlist (TYPE_3__*) ;

__attribute__((used)) static void test_then_block (LexState *ls, int *escapelist) {

  BlockCnt bl;
  FuncState *fs = ls->fs;
  expdesc v;
  int jf;
  luaX_next(ls);
  expr(ls, &v);
  checknext(ls, TK_THEN);
  if (ls->t.token == TK_GOTO || ls->t.token == TK_BREAK) {
    luaK_goiffalse(ls->fs, &v);
    enterblock(fs, &bl, 0);
    gotostat(ls, v.t);
    skipnoopstat(ls);
    if (block_follow(ls, 0)) {
      leaveblock(fs);
      return;
    }
    else
      jf = luaK_jump(fs);
  }
  else {
    luaK_goiftrue(ls->fs, &v);
    enterblock(fs, &bl, 0);
    jf = v.f;
  }
  statlist(ls);
  leaveblock(fs);
  if (ls->t.token == TK_ELSE ||
      ls->t.token == TK_ELSEIF)
    luaK_concat(fs, escapelist, luaK_jump(fs));
  luaK_patchtohere(fs, jf);
}
