
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* info; int nval; int ival; } ;
struct TYPE_7__ {int k; TYPE_1__ u; } ;
typedef TYPE_2__ expdesc ;
typedef int FuncState ;


 void* MAXINDEXRK ;
 int RKASK (void*) ;






 void* boolK (int *,int) ;
 int luaK_exp2anyreg (int *,TYPE_2__*) ;
 int luaK_exp2val (int *,TYPE_2__*) ;
 void* luaK_intK (int *,int ) ;
 void* luaK_numberK (int *,int ) ;
 void* nilK (int *) ;

int luaK_exp2RK (FuncState *fs, expdesc *e) {
  luaK_exp2val(fs, e);
  switch (e->k) {
    case 128: e->u.info = boolK(fs, 1); goto vk;
    case 133: e->u.info = boolK(fs, 0); goto vk;
    case 129: e->u.info = nilK(fs); goto vk;
    case 130: e->u.info = luaK_intK(fs, e->u.ival); goto vk;
    case 131: e->u.info = luaK_numberK(fs, e->u.nval); goto vk;
    case 132:
     vk:
      e->k = 132;
      if (e->u.info <= MAXINDEXRK)
        return RKASK(e->u.info);
      else break;
    default: break;
  }

  return luaK_exp2anyreg(fs, e);
}
