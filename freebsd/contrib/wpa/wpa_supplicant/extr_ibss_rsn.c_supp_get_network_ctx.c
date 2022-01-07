
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ibss_rsn_peer {TYPE_1__* ibss_rsn; } ;
struct TYPE_2__ {int wpa_s; } ;


 void* wpa_supplicant_get_ssid (int ) ;

__attribute__((used)) static void * supp_get_network_ctx(void *ctx)
{
 struct ibss_rsn_peer *peer = ctx;
 return wpa_supplicant_get_ssid(peer->ibss_rsn->wpa_s);
}
