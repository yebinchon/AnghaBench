
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_17__ {TYPE_6__* bl; } ;
struct TYPE_16__ {int firstlabel; scalar_t__ upval; } ;
struct TYPE_12__ {int n; TYPE_4__* arr; } ;
struct TYPE_11__ {TYPE_4__* arr; } ;
struct TYPE_15__ {TYPE_2__ label; TYPE_1__ gt; } ;
struct TYPE_14__ {scalar_t__ nactvar; int pc; int name; } ;
struct TYPE_13__ {TYPE_7__* fs; TYPE_5__* dyd; } ;
typedef TYPE_3__ LexState ;
typedef TYPE_4__ Labeldesc ;
typedef TYPE_5__ Dyndata ;
typedef TYPE_6__ BlockCnt ;


 int closegoto (TYPE_3__*,int,TYPE_4__*) ;
 int luaK_patchclose (TYPE_7__*,int ,scalar_t__) ;
 scalar_t__ luaS_eqstr (int ,int ) ;

__attribute__((used)) static int findlabel (LexState *ls, int g) {
  int i;
  BlockCnt *bl = ls->fs->bl;
  Dyndata *dyd = ls->dyd;
  Labeldesc *gt = &dyd->gt.arr[g];

  for (i = bl->firstlabel; i < dyd->label.n; i++) {
    Labeldesc *lb = &dyd->label.arr[i];
    if (luaS_eqstr(lb->name, gt->name)) {
      if (gt->nactvar > lb->nactvar &&
          (bl->upval || dyd->label.n > bl->firstlabel))
        luaK_patchclose(ls->fs, gt->pc, lb->nactvar);
      closegoto(ls, g, lb);
      return 1;
    }
  }
  return 0;
}
