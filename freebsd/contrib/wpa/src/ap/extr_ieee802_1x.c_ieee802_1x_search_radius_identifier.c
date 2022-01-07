
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sta_id_search {struct eapol_state_machine* sm; int identifier; } ;
struct hostapd_data {int dummy; } ;
struct eapol_state_machine {int dummy; } ;


 int ap_for_each_sta (struct hostapd_data*,int ,struct sta_id_search*) ;
 int ieee802_1x_select_radius_identifier ;

__attribute__((used)) static struct eapol_state_machine *
ieee802_1x_search_radius_identifier(struct hostapd_data *hapd, u8 identifier)
{
 struct sta_id_search id_search;
 id_search.identifier = identifier;
 id_search.sm = ((void*)0);
 ap_for_each_sta(hapd, ieee802_1x_select_radius_identifier, &id_search);
 return id_search.sm;
}
