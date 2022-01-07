
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_18__ {int name; } ;
struct TYPE_17__ {int n; TYPE_4__* arr; } ;
struct TYPE_16__ {TYPE_3__* fs; TYPE_1__* dyd; } ;
struct TYPE_15__ {int name; } ;
struct TYPE_14__ {TYPE_2__* bl; } ;
struct TYPE_13__ {int firstgoto; } ;
struct TYPE_12__ {TYPE_6__ gt; } ;
typedef TYPE_5__ LexState ;
typedef TYPE_6__ Labellist ;
typedef TYPE_7__ Labeldesc ;


 int closegoto (TYPE_5__*,int,TYPE_7__*) ;
 scalar_t__ luaS_eqstr (int ,int ) ;

__attribute__((used)) static void findgotos (LexState *ls, Labeldesc *lb) {
  Labellist *gl = &ls->dyd->gt;
  int i = ls->fs->bl->firstgoto;
  while (i < gl->n) {
    if (luaS_eqstr(gl->arr[i].name, lb->name))
      closegoto(ls, i, lb);
    else
      i++;
  }
}
