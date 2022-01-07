
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int linenumber; TYPE_1__* dyd; int L; } ;
struct TYPE_9__ {int gt; } ;
typedef int TString ;
typedef TYPE_2__ LexState ;


 int TK_GOTO ;
 int findlabel (TYPE_2__*,int) ;
 int * luaS_new (int ,char*) ;
 int luaX_next (TYPE_2__*) ;
 int newlabelentry (TYPE_2__*,int *,int *,int,int) ;
 int * str_checkname (TYPE_2__*) ;
 scalar_t__ testnext (TYPE_2__*,int ) ;

__attribute__((used)) static void gotostat (LexState *ls, int pc) {
  int line = ls->linenumber;
  TString *label;
  int g;
  if (testnext(ls, TK_GOTO))
    label = str_checkname(ls);
  else {
    luaX_next(ls);
    label = luaS_new(ls->L, "break");
  }
  g = newlabelentry(ls, &ls->dyd->gt, label, line, pc);
  findlabel(ls, g);
}
