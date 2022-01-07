
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {int dummy; } ;


 size_t wpabuf_tailroom (struct wpabuf*) ;
 int wpas_mbo_non_pref_chan_attr_body (struct wpa_supplicant*,struct wpabuf*,int,int) ;
 int wpas_mbo_non_pref_chan_subelem_hdr (struct wpabuf*,size_t) ;

__attribute__((used)) static void wpas_mbo_non_pref_chan_subelement(struct wpa_supplicant *wpa_s,
           struct wpabuf *mbo, u8 start,
           u8 end)
{
 size_t size = end - start + 7;

 if (size + 2 > wpabuf_tailroom(mbo))
  return;

 wpas_mbo_non_pref_chan_subelem_hdr(mbo, size);
 wpas_mbo_non_pref_chan_attr_body(wpa_s, mbo, start, end);
}
