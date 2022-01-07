
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct wps_registrar {TYPE_1__* wps; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int config_methods; } ;


 int ATTR_CONFIG_METHODS ;
 int MSG_DEBUG ;
 int WPS_CONFIG_PHY_PUSHBUTTON ;
 int WPS_CONFIG_PUSHBUTTON ;
 int WPS_CONFIG_VIRT_PUSHBUTTON ;
 int wpa_printf (int ,char*,int) ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;

__attribute__((used)) static int wps_build_probe_config_methods(struct wps_registrar *reg,
       struct wpabuf *msg)
{
 u16 methods;




 methods = reg->wps->config_methods & ~WPS_CONFIG_PUSHBUTTON;
 methods &= ~(WPS_CONFIG_VIRT_PUSHBUTTON |
       WPS_CONFIG_PHY_PUSHBUTTON);
 wpa_printf(MSG_DEBUG, "WPS:  * Config Methods (%x)", methods);
 wpabuf_put_be16(msg, ATTR_CONFIG_METHODS);
 wpabuf_put_be16(msg, 2);
 wpabuf_put_be16(msg, methods);
 return 0;
}
