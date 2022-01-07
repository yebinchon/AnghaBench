
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fman_prs_cfg {int prs_exceptions; int max_prs_cyc_lim; scalar_t__ port_id_stat; } ;


 int DEFAULT_MAX_PRS_CYC_LIM ;

void fman_prs_defconfig(struct fman_prs_cfg *cfg)
{
 cfg->port_id_stat = 0;
 cfg->max_prs_cyc_lim = DEFAULT_MAX_PRS_CYC_LIM;
 cfg->prs_exceptions = 0x03000000;
}
