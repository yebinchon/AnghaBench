
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef struct wpabuf const wpabuf ;
struct hostapd_data {TYPE_1__* iface; } ;
struct TYPE_2__ {int freq; } ;


 int HS20_WNM_DEAUTH_IMMINENT_NOTICE ;
 int OUI_WFA ;
 int WLAN_ACTION_WNM ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 int WNM_NOTIFICATION_REQ ;
 int hostapd_drv_send_action (struct hostapd_data*,int ,int ,int const*,int ,int ) ;
 struct wpabuf const* wpabuf_alloc (int ) ;
 int wpabuf_free (struct wpabuf const*) ;
 int wpabuf_head (struct wpabuf const*) ;
 int wpabuf_len (struct wpabuf const*) ;
 int wpabuf_put_be24 (struct wpabuf const*,int ) ;
 int wpabuf_put_buf (struct wpabuf const*,struct wpabuf const*) ;
 int wpabuf_put_u8 (struct wpabuf const*,int) ;

int hs20_send_wnm_notification_deauth_req(struct hostapd_data *hapd,
       const u8 *addr,
       const struct wpabuf *payload)
{
 struct wpabuf *buf;
 int ret;




 buf = wpabuf_alloc(4 + 6 + wpabuf_len(payload));
 if (buf == ((void*)0))
  return -1;

 wpabuf_put_u8(buf, WLAN_ACTION_WNM);
 wpabuf_put_u8(buf, WNM_NOTIFICATION_REQ);
 wpabuf_put_u8(buf, 1);
 wpabuf_put_u8(buf, 1);


 wpabuf_put_u8(buf, WLAN_EID_VENDOR_SPECIFIC);
 wpabuf_put_u8(buf, 4 + wpabuf_len(payload));
 wpabuf_put_be24(buf, OUI_WFA);
 wpabuf_put_u8(buf, HS20_WNM_DEAUTH_IMMINENT_NOTICE);
 wpabuf_put_buf(buf, payload);

 ret = hostapd_drv_send_action(hapd, hapd->iface->freq, 0, addr,
          wpabuf_head(buf), wpabuf_len(buf));

 wpabuf_free(buf);

 return ret;
}
