
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct al_serdes_grp_obj {int dummy; } ;
typedef enum al_serdes_reg_page { ____Placeholder_al_serdes_reg_page } al_serdes_reg_page ;
typedef enum al_serdes_lane { ____Placeholder_al_serdes_lane } al_serdes_lane ;


 int AL_SRDS_REG_TYPE_PMA ;
 int SERDES_IREG_TX_DRV_1_LEVN_MASK ;
 int SERDES_IREG_TX_DRV_1_LEVN_SHIFT ;
 int SERDES_IREG_TX_DRV_1_REG_NUM ;
 int SERDES_IREG_TX_DRV_2_LEVNM1_MASK ;
 int SERDES_IREG_TX_DRV_2_LEVNM1_SHIFT ;
 int SERDES_IREG_TX_DRV_2_REG_NUM ;
 int SERDES_IREG_TX_DRV_3_LEVNP1_MASK ;
 int SERDES_IREG_TX_DRV_3_LEVNP1_SHIFT ;
 int SERDES_IREG_TX_DRV_3_REG_NUM ;
 int al_serdes_grp_reg_masked_write (struct al_serdes_grp_obj*,int,int ,int ,int ,int) ;

__attribute__((used)) static void al_serdes_tx_deemph_set(
  struct al_serdes_grp_obj *obj,
  enum al_serdes_lane lane,
  uint32_t c_zero,
  uint32_t c_plus_1,
  uint32_t c_minus_1)
{
 al_serdes_grp_reg_masked_write(
   obj,
   (enum al_serdes_reg_page)lane,
   AL_SRDS_REG_TYPE_PMA,
   SERDES_IREG_TX_DRV_1_REG_NUM,
   SERDES_IREG_TX_DRV_1_LEVN_MASK,
   ((c_zero + c_plus_1 + c_minus_1)
    << SERDES_IREG_TX_DRV_1_LEVN_SHIFT));

 al_serdes_grp_reg_masked_write(
   obj,
   (enum al_serdes_reg_page)lane,
   AL_SRDS_REG_TYPE_PMA,
   SERDES_IREG_TX_DRV_2_REG_NUM,
   SERDES_IREG_TX_DRV_2_LEVNM1_MASK,
   (c_plus_1 << SERDES_IREG_TX_DRV_2_LEVNM1_SHIFT));

 al_serdes_grp_reg_masked_write(
   obj,
   (enum al_serdes_reg_page)lane,
   AL_SRDS_REG_TYPE_PMA,
   SERDES_IREG_TX_DRV_3_REG_NUM,
   SERDES_IREG_TX_DRV_3_LEVNP1_MASK,
   (c_minus_1 << SERDES_IREG_TX_DRV_3_LEVNP1_SHIFT));
}
