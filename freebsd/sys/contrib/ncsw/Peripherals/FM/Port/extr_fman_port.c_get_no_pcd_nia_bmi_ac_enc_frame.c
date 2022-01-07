
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fman_port_cfg {scalar_t__ errata_A006675; } ;


 int NIA_BMI_AC_ENQ_FRAME ;
 int NIA_ENG_BMI ;
 int NIA_ENG_FM_CTL ;
 int NIA_FM_CTL_AC_NO_IPACC_PRE_BMI_ENQ_FRAME ;

__attribute__((used)) static uint32_t get_no_pcd_nia_bmi_ac_enc_frame(struct fman_port_cfg *cfg)
{
    if (cfg->errata_A006675)
        return NIA_ENG_FM_CTL |
            NIA_FM_CTL_AC_NO_IPACC_PRE_BMI_ENQ_FRAME;
    else
        return NIA_ENG_BMI | NIA_BMI_AC_ENQ_FRAME;
}
