
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct fman_qmi_regs {int fmqm_ien; int fmqm_ie; int fmqm_tapc; int fmqm_eien; int fmqm_eie; } ;
struct fman_cfg {int exceptions; int tnum_aging_period; int clk_freq; } ;


 int FMAN_EX_QMI_DEQ_FROM_UNKNOWN_PORTID ;
 int FMAN_EX_QMI_DOUBLE_ECC ;
 int FMAN_EX_QMI_SINGLE_ECC ;
 int QMI_ERR_INTR_EN_DEQ_FROM_DEF ;
 int QMI_ERR_INTR_EN_DOUBLE_ECC ;
 int QMI_INTR_EN_SINGLE_ECC ;
 int QMI_TAPC_TAP ;
 int iowrite32be (int,int *) ;

int fman_qmi_init(struct fman_qmi_regs *qmi_rg, struct fman_cfg *cfg)
{
 uint32_t tmp_reg;
 uint16_t period_in_fm_clocks;
 uint8_t remainder;





 iowrite32be(QMI_ERR_INTR_EN_DOUBLE_ECC | QMI_ERR_INTR_EN_DEQ_FROM_DEF,
   &qmi_rg->fmqm_eie);
 tmp_reg = 0;
 if (cfg->exceptions & FMAN_EX_QMI_DEQ_FROM_UNKNOWN_PORTID)
  tmp_reg |= QMI_ERR_INTR_EN_DEQ_FROM_DEF;
 if (cfg->exceptions & FMAN_EX_QMI_DOUBLE_ECC)
  tmp_reg |= QMI_ERR_INTR_EN_DOUBLE_ECC;

 iowrite32be(tmp_reg, &qmi_rg->fmqm_eien);

 if (cfg->tnum_aging_period) {

  period_in_fm_clocks = (uint16_t)
    (cfg->tnum_aging_period * cfg->clk_freq);

  remainder = (uint8_t)(period_in_fm_clocks % 64);
  if (remainder)
   tmp_reg = (uint32_t)((period_in_fm_clocks / 64) + 1);
  else{
   tmp_reg = (uint32_t)(period_in_fm_clocks / 64);
   if (!tmp_reg)
    tmp_reg = 1;
  }
  tmp_reg <<= QMI_TAPC_TAP;
  iowrite32be(tmp_reg, &qmi_rg->fmqm_tapc);
 }
 tmp_reg = 0;

 iowrite32be(QMI_INTR_EN_SINGLE_ECC, &qmi_rg->fmqm_ie);
 if (cfg->exceptions & FMAN_EX_QMI_SINGLE_ECC)
  tmp_reg |= QMI_INTR_EN_SINGLE_ECC;

 iowrite32be(tmp_reg, &qmi_rg->fmqm_ien);

 return 0;
}
