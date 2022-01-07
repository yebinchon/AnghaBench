
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;


 int ATTR_SELECTED_REGISTRAR ;
 int wpabuf_put_be16 (struct wpabuf*,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

__attribute__((used)) static int wps_er_build_selected_registrar(struct wpabuf *msg, int sel_reg)
{
 wpabuf_put_be16(msg, ATTR_SELECTED_REGISTRAR);
 wpabuf_put_be16(msg, 1);
 wpabuf_put_u8(msg, !!sel_reg);
 return 0;
}
