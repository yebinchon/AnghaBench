
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ IMX6_ANALOG_CCM_PLL_USB1 ;
 int IMX6_ANALOG_CCM_PLL_USB_ENABLE ;
 int IMX6_ANALOG_CCM_PLL_USB_EN_USB_CLKS ;
 int IMX6_ANALOG_CCM_PLL_USB_POWER ;
 TYPE_1__* ccm_sc ;
 int device_printf (int ,char*,int) ;
 int imx6_anatop_write_4 (scalar_t__,int) ;

void
imx_ccm_usbphy_enable(device_t _phydev)
{
 imx6_anatop_write_4(IMX6_ANALOG_CCM_PLL_USB1 + 0,
     IMX6_ANALOG_CCM_PLL_USB_ENABLE |
     IMX6_ANALOG_CCM_PLL_USB_POWER |
     IMX6_ANALOG_CCM_PLL_USB_EN_USB_CLKS);

 imx6_anatop_write_4(IMX6_ANALOG_CCM_PLL_USB1 + 0x10,
     IMX6_ANALOG_CCM_PLL_USB_ENABLE |
     IMX6_ANALOG_CCM_PLL_USB_POWER |
     IMX6_ANALOG_CCM_PLL_USB_EN_USB_CLKS);

}
