
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wpabuf {int dummy; } ;


 int ATTR_SELECTED_REGISTRAR_CONFIG_METHODS ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;

__attribute__((used)) static int wps_er_build_sel_reg_config_methods(struct wpabuf *msg,
            u16 sel_reg_config_methods)
{
 wpabuf_put_be16(msg, ATTR_SELECTED_REGISTRAR_CONFIG_METHODS);
 wpabuf_put_be16(msg, 2);
 wpabuf_put_be16(msg, sel_reg_config_methods);
 return 0;
}
