
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {TYPE_2__* global; TYPE_1__* conf; } ;
struct wpa_bss {int bssid; } ;
struct TYPE_4__ {int * p2p; scalar_t__ p2p_disabled; } ;
struct TYPE_3__ {scalar_t__ p2p_disabled; } ;


 int P2P_IE_VENDOR_TYPE ;
 int p2p_assoc_req_ie (int *,int ,int *,size_t,int,struct wpabuf*) ;
 struct wpabuf* wpa_bss_get_vendor_ie_multi (struct wpa_bss*,int ) ;
 int wpabuf_free (struct wpabuf*) ;

int wpas_p2p_assoc_req_ie(struct wpa_supplicant *wpa_s, struct wpa_bss *bss,
     u8 *buf, size_t len, int p2p_group)
{
 struct wpabuf *p2p_ie;
 int ret;

 if (wpa_s->global->p2p_disabled)
  return -1;




 if (wpa_s->conf->p2p_disabled && p2p_group)
  return -1;
 if (wpa_s->global->p2p == ((void*)0))
  return -1;
 if (bss == ((void*)0))
  return -1;

 p2p_ie = wpa_bss_get_vendor_ie_multi(bss, P2P_IE_VENDOR_TYPE);
 ret = p2p_assoc_req_ie(wpa_s->global->p2p, bss->bssid, buf, len,
          p2p_group, p2p_ie);
 wpabuf_free(p2p_ie);

 return ret;
}
