
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ k; } ;
typedef TYPE_1__ expdesc ;
struct TYPE_12__ {int * envn; int * fs; } ;
typedef int TString ;
typedef TYPE_2__ LexState ;
typedef int FuncState ;


 scalar_t__ VLOCAL ;
 scalar_t__ VUPVAL ;
 scalar_t__ VVOID ;
 int codestring (TYPE_2__*,TYPE_1__*,int *) ;
 int luaK_indexed (int *,TYPE_1__*,TYPE_1__*) ;
 int lua_assert (int) ;
 scalar_t__ singlevaraux (int *,int *,TYPE_1__*,int) ;
 int * str_checkname (TYPE_2__*) ;

__attribute__((used)) static void singlevar (LexState *ls, expdesc *var) {
  TString *varname = str_checkname(ls);
  FuncState *fs = ls->fs;
  if (singlevaraux(fs, varname, var, 1) == VVOID) {
    expdesc key;
    singlevaraux(fs, ls->envn, var, 1);
    lua_assert(var->k == VLOCAL || var->k == VUPVAL);
    codestring(ls, &key, varname);
    luaK_indexed(fs, var, &key);
  }
}
