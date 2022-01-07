
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fman_prs_regs {int fmpr_ppsc; int fmpr_perer; int fmpr_perr; int fmpr_pever; int fmpr_pevr; int fmpr_rpclim; } ;
struct fman_prs_cfg {int max_prs_cyc_lim; int prs_exceptions; int port_id_stat; } ;


 int FM_PCD_EX_PRS_DOUBLE_ECC ;
 int FM_PCD_EX_PRS_SINGLE_ECC ;
 int FM_PCD_PRS_DOUBLE_ECC ;
 int FM_PCD_PRS_PORT_IDLE_STS ;
 int FM_PCD_PRS_SINGLE_ECC ;
 int iowrite32be (int,int *) ;

int fman_prs_init(struct fman_prs_regs *regs, struct fman_prs_cfg *cfg)
{
 uint32_t tmp;

 iowrite32be(cfg->max_prs_cyc_lim, &regs->fmpr_rpclim);
 iowrite32be((FM_PCD_PRS_SINGLE_ECC | FM_PCD_PRS_PORT_IDLE_STS),
   &regs->fmpr_pevr);

 if (cfg->prs_exceptions & FM_PCD_EX_PRS_SINGLE_ECC)
  iowrite32be(FM_PCD_PRS_SINGLE_ECC, &regs->fmpr_pever);
 else
  iowrite32be(0, &regs->fmpr_pever);

 iowrite32be(FM_PCD_PRS_DOUBLE_ECC, &regs->fmpr_perr);

 tmp = 0;
 if (cfg->prs_exceptions & FM_PCD_EX_PRS_DOUBLE_ECC)
  tmp |= FM_PCD_PRS_DOUBLE_ECC;
 iowrite32be(tmp, &regs->fmpr_perer);

 iowrite32be(cfg->port_id_stat, &regs->fmpr_ppsc);

 return 0;
}
