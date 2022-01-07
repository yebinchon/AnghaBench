
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_21__ {scalar_t__ nactvar; size_t firstgoto; struct TYPE_21__* previous; int firstlabel; scalar_t__ isloop; scalar_t__ upval; } ;
struct TYPE_20__ {scalar_t__ nactvar; scalar_t__ freereg; TYPE_6__* bl; TYPE_4__* ls; } ;
struct TYPE_19__ {TYPE_3__* dyd; } ;
struct TYPE_17__ {size_t n; int * arr; } ;
struct TYPE_16__ {int n; } ;
struct TYPE_18__ {TYPE_2__ gt; TYPE_1__ label; } ;
typedef TYPE_4__ LexState ;
typedef TYPE_5__ FuncState ;
typedef TYPE_6__ BlockCnt ;


 int breaklabel (TYPE_4__*) ;
 int luaK_jump (TYPE_5__*) ;
 int luaK_patchclose (TYPE_5__*,int,scalar_t__) ;
 int luaK_patchtohere (TYPE_5__*,int) ;
 int lua_assert (int) ;
 int movegotosout (TYPE_5__*,TYPE_6__*) ;
 int removevars (TYPE_5__*,scalar_t__) ;
 int undefgoto (TYPE_4__*,int *) ;

__attribute__((used)) static void leaveblock (FuncState *fs) {
  BlockCnt *bl = fs->bl;
  LexState *ls = fs->ls;
  if (bl->previous && bl->upval) {

    int j = luaK_jump(fs);
    luaK_patchclose(fs, j, bl->nactvar);
    luaK_patchtohere(fs, j);
  }
  if (bl->isloop)
    breaklabel(ls);
  fs->bl = bl->previous;
  removevars(fs, bl->nactvar);
  lua_assert(bl->nactvar == fs->nactvar);
  fs->freereg = fs->nactvar;
  ls->dyd->label.n = bl->firstlabel;
  if (bl->previous)
    movegotosout(fs, bl);
  else if (bl->firstgoto < ls->dyd->gt.n)
    undefgoto(ls, &ls->dyd->gt.arr[bl->firstgoto]);
}
