
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int CCM_CACCR ;
 int WR4 (int ,int ,int ) ;
 int ccm_sc ;

void
imx_ccm_set_cacrr(uint32_t divisor)
{

 WR4(ccm_sc, CCM_CACCR, divisor);
}
