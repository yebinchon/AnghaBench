
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CCM_CACCR ;
 int RD4 (int ,int ) ;
 int ccm_sc ;

uint32_t
imx_ccm_get_cacrr(void)
{

 return (RD4(ccm_sc, CCM_CACCR));
}
