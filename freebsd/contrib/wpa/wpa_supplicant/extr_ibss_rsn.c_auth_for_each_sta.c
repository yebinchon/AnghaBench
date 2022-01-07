
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ibss_rsn_peer {struct wpa_state_machine* auth; struct ibss_rsn_peer* next; } ;
struct ibss_rsn {struct ibss_rsn_peer* peers; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int auth_for_each_sta(void *ctx, int (*cb)(struct wpa_state_machine *sm,
        void *ctx),
        void *cb_ctx)
{
 struct ibss_rsn *ibss_rsn = ctx;
 struct ibss_rsn_peer *peer;

 wpa_printf(MSG_DEBUG, "AUTH: for_each_sta");

 for (peer = ibss_rsn->peers; peer; peer = peer->next) {
  if (peer->auth && cb(peer->auth, cb_ctx))
   return 1;
 }

 return 0;
}
