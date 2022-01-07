
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct hostapd_data {int dummy; } ;


 int wpabuf_free (struct wpabuf*) ;

void hostapd_free_ap_extra_ies(struct hostapd_data *hapd,
          struct wpabuf *beacon,
          struct wpabuf *proberesp,
          struct wpabuf *assocresp)
{
 wpabuf_free(beacon);
 wpabuf_free(proberesp);
 wpabuf_free(assocresp);
}
