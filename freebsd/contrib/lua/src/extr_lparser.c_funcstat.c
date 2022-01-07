
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int expdesc ;
struct TYPE_6__ {int fs; } ;
typedef TYPE_1__ LexState ;


 int body (TYPE_1__*,int *,int,int) ;
 int funcname (TYPE_1__*,int *) ;
 int luaK_fixline (int ,int) ;
 int luaK_storevar (int ,int *,int *) ;
 int luaX_next (TYPE_1__*) ;

__attribute__((used)) static void funcstat (LexState *ls, int line) {

  int ismethod;
  expdesc v, b;
  luaX_next(ls);
  ismethod = funcname(ls, &v);
  body(ls, &b, ismethod, line);
  luaK_storevar(ls->fs, &v, &b);
  luaK_fixline(ls->fs, line);
}
