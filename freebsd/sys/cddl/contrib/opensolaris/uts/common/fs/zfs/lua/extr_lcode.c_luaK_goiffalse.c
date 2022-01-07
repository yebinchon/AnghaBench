
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int info; } ;
struct TYPE_7__ {int k; void* f; int t; TYPE_1__ u; } ;
typedef TYPE_2__ expdesc ;
typedef int FuncState ;


 void* NO_JUMP ;



 int jumponcond (int *,TYPE_2__*,int) ;
 int luaK_concat (int *,int *,int) ;
 int luaK_dischargevars (int *,TYPE_2__*) ;
 int luaK_patchtohere (int *,void*) ;

void luaK_goiffalse (FuncState *fs, expdesc *e) {
  int pc;
  luaK_dischargevars(fs, e);
  switch (e->k) {
    case 129: {
      pc = e->u.info;
      break;
    }
    case 128: case 130: {
      pc = NO_JUMP;
      break;
    }
    default: {
      pc = jumponcond(fs, e, 1);
      break;
    }
  }
  luaK_concat(fs, &e->t, pc);
  luaK_patchtohere(fs, e->f);
  e->f = NO_JUMP;
}
