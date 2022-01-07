
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibss_rsn_peer {int supp_state; } ;
typedef enum wpa_states { ____Placeholder_wpa_states } wpa_states ;



__attribute__((used)) static void supp_set_state(void *ctx, enum wpa_states state)
{
 struct ibss_rsn_peer *peer = ctx;
 peer->supp_state = state;
}
