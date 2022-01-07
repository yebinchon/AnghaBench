
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct al_udma_q {int size; int cdesc_phy_base; TYPE_2__* q_regs; int flags; int * cdesc_base_ptr; int desc_phy_base; } ;
struct TYPE_3__ {int crbp_high; int crbp_low; int drl; int drbp_high; int drbp_low; } ;
struct TYPE_4__ {TYPE_1__ rings; } ;


 int AL_ADDR_HIGH (int ) ;
 int AL_ADDR_LOW (int ) ;
 int AL_UDMA_Q_FLAGS_NO_COMP_UPDATE ;
 int UDMA_M2S_Q_TCRBP_LOW_ADDR_MASK ;
 int UDMA_M2S_Q_TDRBP_LOW_ADDR_MASK ;
 int al_assert (int) ;
 int al_reg_write32 (int *,int) ;
 int al_udma_q_config_compl (struct al_udma_q*) ;

__attribute__((used)) static int al_udma_q_set_pointers(struct al_udma_q *udma_q)
{


 al_assert((AL_ADDR_LOW(udma_q->desc_phy_base) &
     ~UDMA_M2S_Q_TDRBP_LOW_ADDR_MASK) == 0);
 al_reg_write32(&udma_q->q_regs->rings.drbp_low,
         AL_ADDR_LOW(udma_q->desc_phy_base));
 al_reg_write32(&udma_q->q_regs->rings.drbp_high,
         AL_ADDR_HIGH(udma_q->desc_phy_base));

 al_reg_write32(&udma_q->q_regs->rings.drl, udma_q->size);


 if (udma_q->cdesc_base_ptr == ((void*)0)) {
  udma_q->flags |= AL_UDMA_Q_FLAGS_NO_COMP_UPDATE;
 } else {


  al_assert((AL_ADDR_LOW(udma_q->cdesc_phy_base) &
      ~UDMA_M2S_Q_TCRBP_LOW_ADDR_MASK) == 0);
  al_reg_write32(&udma_q->q_regs->rings.crbp_low,
          AL_ADDR_LOW(udma_q->cdesc_phy_base));
  al_reg_write32(&udma_q->q_regs->rings.crbp_high,
          AL_ADDR_HIGH(udma_q->cdesc_phy_base));
 }
 al_udma_q_config_compl(udma_q);
 return 0;
}
