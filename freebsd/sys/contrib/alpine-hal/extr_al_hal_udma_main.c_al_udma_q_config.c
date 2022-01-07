
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct al_udma_q {TYPE_4__* q_regs; TYPE_1__* udma; } ;
struct TYPE_6__ {int mask; } ;
struct TYPE_7__ {TYPE_2__ rlimit; } ;
struct TYPE_8__ {TYPE_3__ m2s_q; } ;
struct TYPE_5__ {scalar_t__ type; } ;


 int UDMA_M2S_Q_RATE_LIMIT_MASK_INTERNAL_PAUSE_DMB ;
 scalar_t__ UDMA_TX ;
 int al_reg_read32 (int *) ;
 int al_reg_write32 (int *,int ) ;

__attribute__((used)) static int al_udma_q_config(struct al_udma_q *udma_q)
{
 uint32_t *reg_addr;
 uint32_t val;

 if (udma_q->udma->type == UDMA_TX) {
  reg_addr = &udma_q->q_regs->m2s_q.rlimit.mask;

  val = al_reg_read32(reg_addr);

  val &= ~UDMA_M2S_Q_RATE_LIMIT_MASK_INTERNAL_PAUSE_DMB;
  al_reg_write32(reg_addr, val);
 }
 return 0;
}
