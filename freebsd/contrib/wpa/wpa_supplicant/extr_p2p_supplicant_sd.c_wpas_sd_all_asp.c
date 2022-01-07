
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {TYPE_1__* global; } ;
typedef int q ;
struct TYPE_2__ {int p2p; } ;


 scalar_t__ p2p_get_p2ps_adv_list (int ) ;
 int wpas_sd_req_asp (struct wpa_supplicant*,struct wpabuf*,int,int const*,int) ;

__attribute__((used)) static void wpas_sd_all_asp(struct wpa_supplicant *wpa_s,
       struct wpabuf *resp, u8 srv_trans_id)
{





 const u8 q[] = { 1, (const u8) '*', 0 };

 if (p2p_get_p2ps_adv_list(wpa_s->global->p2p))
  wpas_sd_req_asp(wpa_s, resp, srv_trans_id, q, sizeof(q));
}
