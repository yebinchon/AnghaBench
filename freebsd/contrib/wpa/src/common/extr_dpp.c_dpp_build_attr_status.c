
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
typedef enum dpp_status_error { ____Placeholder_dpp_status_error } dpp_status_error ;


 int DPP_ATTR_STATUS ;
 int MSG_DEBUG ;
 int wpa_printf (int ,char*,int) ;
 int wpabuf_put_le16 (struct wpabuf*,int) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

__attribute__((used)) static void dpp_build_attr_status(struct wpabuf *msg,
      enum dpp_status_error status)
{
 wpa_printf(MSG_DEBUG, "DPP: Status %d", status);
 wpabuf_put_le16(msg, DPP_ATTR_STATUS);
 wpabuf_put_le16(msg, 1);
 wpabuf_put_u8(msg, status);
}
