
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_serdes_grp_obj {int dummy; } ;


 int AL_SRDS_REG_PAGE_4_COMMON ;
 int AL_SRDS_REG_TYPE_PMA ;
 int SERDES_IREG_FLD_TXBIST_BITERROR_EN ;
 int SERDES_IREG_FLD_TXBIST_BITERROR_EN_REG_NUM ;
 int al_serdes_grp_reg_masked_write (struct al_serdes_grp_obj*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void al_serdes_bist_tx_err_inject(
 struct al_serdes_grp_obj *obj)
{
 al_serdes_grp_reg_masked_write(
  obj,
  AL_SRDS_REG_PAGE_4_COMMON,
  AL_SRDS_REG_TYPE_PMA,
  SERDES_IREG_FLD_TXBIST_BITERROR_EN_REG_NUM,
  SERDES_IREG_FLD_TXBIST_BITERROR_EN,
  SERDES_IREG_FLD_TXBIST_BITERROR_EN);

 al_serdes_grp_reg_masked_write(
  obj,
  AL_SRDS_REG_PAGE_4_COMMON,
  AL_SRDS_REG_TYPE_PMA,
  SERDES_IREG_FLD_TXBIST_BITERROR_EN_REG_NUM,
  SERDES_IREG_FLD_TXBIST_BITERROR_EN,
  0);
}
