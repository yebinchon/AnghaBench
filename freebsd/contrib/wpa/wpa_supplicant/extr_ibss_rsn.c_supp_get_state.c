
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibss_rsn_peer {int supp_state; } ;
typedef enum wpa_states { ____Placeholder_wpa_states } wpa_states ;



__attribute__((used)) static enum wpa_states supp_get_state(void *ctx)
{
 struct ibss_rsn_peer *peer = ctx;
 return peer->supp_state;
}
