
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct al_udma {int state; scalar_t__ type; TYPE_5__* udma_regs; int name; } ;
typedef enum al_udma_state { ____Placeholder_al_udma_state } al_udma_state ;
struct TYPE_8__ {int change_state; } ;
struct TYPE_9__ {TYPE_3__ s2m; } ;
struct TYPE_6__ {int change_state; } ;
struct TYPE_7__ {TYPE_1__ m2s; } ;
struct TYPE_10__ {TYPE_4__ s2m; TYPE_2__ m2s; } ;


 int EINVAL ;


 scalar_t__ UDMA_M2S_CHANGE_STATE_ABORT ;
 scalar_t__ UDMA_M2S_CHANGE_STATE_DIS ;
 scalar_t__ UDMA_M2S_CHANGE_STATE_NORMAL ;

 scalar_t__ UDMA_TX ;
 int al_assert (int ) ;
 int al_dbg (char*,int ,int,...) ;
 int al_err (char*,int) ;
 int al_reg_write32 (int *,scalar_t__) ;
 int * al_udma_states_name ;

int al_udma_state_set(struct al_udma *udma, enum al_udma_state state)
{
 uint32_t reg;

 al_assert(udma != ((void*)0));
 if (state == udma->state)
  al_dbg("udma [%s]: requested state identical to "
   "current state (%d)\n", udma->name, state);

 al_dbg("udma [%s]: change state from (%s) to (%s)\n",
   udma->name, al_udma_states_name[udma->state],
   al_udma_states_name[state]);

 reg = 0;
 switch (state) {
 case 129:
  reg |= UDMA_M2S_CHANGE_STATE_DIS;
  break;
 case 128:
  reg |= UDMA_M2S_CHANGE_STATE_NORMAL;
  break;
 case 130:
  reg |= UDMA_M2S_CHANGE_STATE_ABORT;
  break;
 default:
  al_err("udma: invalid state (%d)\n", state);
  return -EINVAL;
 }

 if (udma->type == UDMA_TX)
  al_reg_write32(&udma->udma_regs->m2s.m2s.change_state, reg);
 else
  al_reg_write32(&udma->udma_regs->s2m.s2m.change_state, reg);

 udma->state = state;
 return 0;
}
