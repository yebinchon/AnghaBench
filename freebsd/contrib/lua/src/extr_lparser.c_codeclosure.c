
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int expdesc ;
struct TYPE_9__ {scalar_t__ np; } ;
struct TYPE_8__ {TYPE_1__* fs; } ;
struct TYPE_7__ {TYPE_3__* prev; } ;
typedef TYPE_2__ LexState ;
typedef TYPE_3__ FuncState ;


 int OP_CLOSURE ;
 int VRELOCABLE ;
 int init_exp (int *,int ,int ) ;
 int luaK_codeABx (TYPE_3__*,int ,int ,scalar_t__) ;
 int luaK_exp2nextreg (TYPE_3__*,int *) ;

__attribute__((used)) static void codeclosure (LexState *ls, expdesc *v) {
  FuncState *fs = ls->fs->prev;
  init_exp(v, VRELOCABLE, luaK_codeABx(fs, OP_CLOSURE, 0, fs->np - 1));
  luaK_exp2nextreg(fs, v);
}
