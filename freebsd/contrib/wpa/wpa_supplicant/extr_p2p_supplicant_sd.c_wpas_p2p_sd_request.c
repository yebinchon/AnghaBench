
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef uintptr_t u64 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {TYPE_1__* global; } ;
struct TYPE_2__ {int * p2p; scalar_t__ p2p_disabled; } ;


 int p2p_sd_request (int *,int const*,struct wpabuf const*) ;

u64 wpas_p2p_sd_request(struct wpa_supplicant *wpa_s, const u8 *dst,
   const struct wpabuf *tlvs)
{
 if (wpa_s->global->p2p_disabled || wpa_s->global->p2p == ((void*)0))
  return 0;
 return (uintptr_t) p2p_sd_request(wpa_s->global->p2p, dst, tlvs);
}
