
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
typedef enum dpp_public_action_frame_type { ____Placeholder_dpp_public_action_frame_type } dpp_public_action_frame_type ;


 int DPP_OUI_TYPE ;
 int OUI_WFA ;
 int WLAN_ACTION_PUBLIC ;
 int WLAN_PA_VENDOR_SPECIFIC ;
 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_put_be24 (struct wpabuf*,int ) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;

struct wpabuf * dpp_alloc_msg(enum dpp_public_action_frame_type type,
         size_t len)
{
 struct wpabuf *msg;

 msg = wpabuf_alloc(8 + len);
 if (!msg)
  return ((void*)0);
 wpabuf_put_u8(msg, WLAN_ACTION_PUBLIC);
 wpabuf_put_u8(msg, WLAN_PA_VENDOR_SPECIFIC);
 wpabuf_put_be24(msg, OUI_WFA);
 wpabuf_put_u8(msg, DPP_OUI_TYPE);
 wpabuf_put_u8(msg, 1);
 wpabuf_put_u8(msg, type);
 return msg;
}
