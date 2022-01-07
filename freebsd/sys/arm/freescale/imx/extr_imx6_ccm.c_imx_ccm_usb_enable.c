
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int CCGR_CLK_MODE_ALWAYS ;
 int CCM_CCGR6 ;
 int RD4 (int ,int ) ;
 int WR4 (int ,int ,int) ;
 int ccm_sc ;

void
imx_ccm_usb_enable(device_t _usbdev)
{





 WR4(ccm_sc, CCM_CCGR6, RD4(ccm_sc, CCM_CCGR6) | CCGR_CLK_MODE_ALWAYS);
}
