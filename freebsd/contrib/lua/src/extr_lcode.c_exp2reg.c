
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int info; } ;
struct TYPE_7__ {scalar_t__ k; TYPE_1__ u; void* t; void* f; } ;
typedef TYPE_2__ expdesc ;
typedef int FuncState ;


 void* NO_JUMP ;
 scalar_t__ VJMP ;
 scalar_t__ VNONRELOC ;
 int code_loadbool (int *,int,int,int) ;
 int discharge2reg (int *,TYPE_2__*,int) ;
 scalar_t__ hasjumps (TYPE_2__*) ;
 int luaK_concat (int *,void**,int) ;
 int luaK_getlabel (int *) ;
 void* luaK_jump (int *) ;
 int luaK_patchtohere (int *,int) ;
 scalar_t__ need_value (int *,void*) ;
 int patchlistaux (int *,void*,int,int,int) ;

__attribute__((used)) static void exp2reg (FuncState *fs, expdesc *e, int reg) {
  discharge2reg(fs, e, reg);
  if (e->k == VJMP)
    luaK_concat(fs, &e->t, e->u.info);
  if (hasjumps(e)) {
    int final;
    int p_f = NO_JUMP;
    int p_t = NO_JUMP;
    if (need_value(fs, e->t) || need_value(fs, e->f)) {
      int fj = (e->k == VJMP) ? NO_JUMP : luaK_jump(fs);
      p_f = code_loadbool(fs, reg, 0, 1);
      p_t = code_loadbool(fs, reg, 1, 0);
      luaK_patchtohere(fs, fj);
    }
    final = luaK_getlabel(fs);
    patchlistaux(fs, e->f, final, reg, p_f);
    patchlistaux(fs, e->t, final, reg, p_t);
  }
  e->f = e->t = NO_JUMP;
  e->u.info = reg;
  e->k = VNONRELOC;
}
