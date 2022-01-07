
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct wpa_supplicant {int dummy; } ;


 int wpa_drv_send_mlme (struct wpa_supplicant*,int ,int ,int,unsigned int) ;
 int wpabuf_head (struct wpabuf const*) ;
 int wpabuf_len (struct wpabuf const*) ;

__attribute__((used)) static int wpas_send_probe_resp(void *ctx, const struct wpabuf *buf,
    unsigned int freq)
{
 struct wpa_supplicant *wpa_s = ctx;
 return wpa_drv_send_mlme(wpa_s, wpabuf_head(buf), wpabuf_len(buf), 1,
     freq);
}
