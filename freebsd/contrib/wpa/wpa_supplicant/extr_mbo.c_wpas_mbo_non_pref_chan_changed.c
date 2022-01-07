
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct wpa_supplicant {int dummy; } ;


 struct wpabuf* wpabuf_alloc (int) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head_u8 (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int wpas_mbo_non_pref_chan_attrs (struct wpa_supplicant*,struct wpabuf*,int) ;
 int wpas_mbo_send_wnm_notification (struct wpa_supplicant*,int ,int ) ;
 int wpas_update_mbo_connect_params (struct wpa_supplicant*) ;

__attribute__((used)) static void wpas_mbo_non_pref_chan_changed(struct wpa_supplicant *wpa_s)
{
 struct wpabuf *buf;

 buf = wpabuf_alloc(512);
 if (!buf)
  return;

 wpas_mbo_non_pref_chan_attrs(wpa_s, buf, 1);
 wpas_mbo_send_wnm_notification(wpa_s, wpabuf_head_u8(buf),
           wpabuf_len(buf));
 wpas_update_mbo_connect_params(wpa_s);
 wpabuf_free(buf);
}
