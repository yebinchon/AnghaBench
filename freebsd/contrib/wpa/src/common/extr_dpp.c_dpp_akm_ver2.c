
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dpp_akm { ____Placeholder_dpp_akm } dpp_akm ;


 int DPP_AKM_PSK_SAE_DPP ;
 int DPP_AKM_SAE_DPP ;

int dpp_akm_ver2(enum dpp_akm akm)
{
 return akm == DPP_AKM_SAE_DPP || akm == DPP_AKM_PSK_SAE_DPP;
}
