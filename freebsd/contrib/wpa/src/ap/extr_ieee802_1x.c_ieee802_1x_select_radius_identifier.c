
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {struct eapol_state_machine* eapol_sm; } ;
struct sta_id_search {scalar_t__ identifier; struct eapol_state_machine* sm; } ;
struct hostapd_data {int dummy; } ;
struct eapol_state_machine {scalar_t__ radius_identifier; } ;



__attribute__((used)) static int ieee802_1x_select_radius_identifier(struct hostapd_data *hapd,
            struct sta_info *sta,
            void *ctx)
{
 struct sta_id_search *id_search = ctx;
 struct eapol_state_machine *sm = sta->eapol_sm;

 if (sm && sm->radius_identifier >= 0 &&
     sm->radius_identifier == id_search->identifier) {
  id_search->sm = sm;
  return 1;
 }
 return 0;
}
