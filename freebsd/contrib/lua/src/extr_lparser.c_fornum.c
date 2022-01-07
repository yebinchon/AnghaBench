
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {int freereg; } ;
struct TYPE_13__ {TYPE_2__* fs; } ;
typedef int TString ;
typedef TYPE_1__ LexState ;
typedef TYPE_2__ FuncState ;


 int checknext (TYPE_1__*,char) ;
 int exp1 (TYPE_1__*) ;
 int forbody (TYPE_1__*,int,int,int,int) ;
 int luaK_codek (TYPE_2__*,int,int ) ;
 int luaK_intK (TYPE_2__*,int) ;
 int luaK_reserveregs (TYPE_2__*,int) ;
 int new_localvar (TYPE_1__*,int *) ;
 int new_localvarliteral (TYPE_1__*,char*) ;
 scalar_t__ testnext (TYPE_1__*,char) ;

__attribute__((used)) static void fornum (LexState *ls, TString *varname, int line) {

  FuncState *fs = ls->fs;
  int base = fs->freereg;
  new_localvarliteral(ls, "(for index)");
  new_localvarliteral(ls, "(for limit)");
  new_localvarliteral(ls, "(for step)");
  new_localvar(ls, varname);
  checknext(ls, '=');
  exp1(ls);
  checknext(ls, ',');
  exp1(ls);
  if (testnext(ls, ','))
    exp1(ls);
  else {
    luaK_codek(fs, fs->freereg, luaK_intK(fs, 1));
    luaK_reserveregs(fs, 1);
  }
  forbody(ls, base, line, 1, 1);
}
