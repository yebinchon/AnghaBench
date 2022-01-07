
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int WPS_CONFIG_PHY_PUSHBUTTON ;
 int WPS_CONFIG_PUSHBUTTON ;
 int WPS_CONFIG_VIRT_PUSHBUTTON ;

__attribute__((used)) static void wps_set_pushbutton(u16 *methods, u16 conf_methods)
{
 *methods |= WPS_CONFIG_PUSHBUTTON;
 if ((conf_methods & WPS_CONFIG_VIRT_PUSHBUTTON) ==
     WPS_CONFIG_VIRT_PUSHBUTTON)
  *methods |= WPS_CONFIG_VIRT_PUSHBUTTON;
 if ((conf_methods & WPS_CONFIG_PHY_PUSHBUTTON) ==
     WPS_CONFIG_PHY_PUSHBUTTON)
  *methods |= WPS_CONFIG_PHY_PUSHBUTTON;
 if ((*methods & WPS_CONFIG_VIRT_PUSHBUTTON) !=
     WPS_CONFIG_VIRT_PUSHBUTTON &&
     (*methods & WPS_CONFIG_PHY_PUSHBUTTON) !=
     WPS_CONFIG_PHY_PUSHBUTTON) {





  *methods |= WPS_CONFIG_PHY_PUSHBUTTON;
 }
}
