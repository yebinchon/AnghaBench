
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct al_serdes_grp_obj {int dummy; } ;


 int AL_SRDS_REG_PAGE_4_COMMON ;
 int AL_SRDS_REG_TYPE_PMA ;
 int SERDES_IREG_FLD_RXEQ_DCGAIN_LUP0_MASK ;
 int SERDES_IREG_FLD_RXEQ_DCGAIN_LUP0_REG_NUM ;
 int SERDES_IREG_FLD_RXEQ_DCGAIN_LUP0_SHIFT ;
 int al_serdes_grp_reg_masked_write (struct al_serdes_grp_obj*,int ,int ,int ,int ,int) ;

__attribute__((used)) static void al_serdes_dcgain_set(
 struct al_serdes_grp_obj *obj,
 uint8_t dcgain)
{
 al_serdes_grp_reg_masked_write(obj,
   AL_SRDS_REG_PAGE_4_COMMON,
   AL_SRDS_REG_TYPE_PMA,
   SERDES_IREG_FLD_RXEQ_DCGAIN_LUP0_REG_NUM,
   SERDES_IREG_FLD_RXEQ_DCGAIN_LUP0_MASK,
   (dcgain << SERDES_IREG_FLD_RXEQ_DCGAIN_LUP0_SHIFT));
}
