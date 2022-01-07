
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int any; int disconnect; int magic_pkt; int gtk_rekey_failure; int eap_identity_req; int four_way_handshake; int rfkill_release; } ;
struct wpa_driver_capa {TYPE_1__ wowlan_triggers; } ;
struct nlattr {int dummy; } ;


 int MAX_NL80211_WOWLAN_TRIG ;
 size_t NL80211_WOWLAN_TRIG_4WAY_HANDSHAKE ;
 size_t NL80211_WOWLAN_TRIG_ANY ;
 size_t NL80211_WOWLAN_TRIG_DISCONNECT ;
 size_t NL80211_WOWLAN_TRIG_EAP_IDENT_REQUEST ;
 size_t NL80211_WOWLAN_TRIG_GTK_REKEY_FAILURE ;
 size_t NL80211_WOWLAN_TRIG_MAGIC_PKT ;
 size_t NL80211_WOWLAN_TRIG_RFKILL_RELEASE ;
 scalar_t__ nla_parse_nested (struct nlattr**,int ,struct nlattr*,int *) ;

__attribute__((used)) static void wiphy_info_wowlan_triggers(struct wpa_driver_capa *capa,
           struct nlattr *tb)
{
 struct nlattr *triggers[MAX_NL80211_WOWLAN_TRIG + 1];

 if (tb == ((void*)0))
  return;

 if (nla_parse_nested(triggers, MAX_NL80211_WOWLAN_TRIG,
        tb, ((void*)0)))
  return;

 if (triggers[NL80211_WOWLAN_TRIG_ANY])
  capa->wowlan_triggers.any = 1;
 if (triggers[NL80211_WOWLAN_TRIG_DISCONNECT])
  capa->wowlan_triggers.disconnect = 1;
 if (triggers[NL80211_WOWLAN_TRIG_MAGIC_PKT])
  capa->wowlan_triggers.magic_pkt = 1;
 if (triggers[NL80211_WOWLAN_TRIG_GTK_REKEY_FAILURE])
  capa->wowlan_triggers.gtk_rekey_failure = 1;
 if (triggers[NL80211_WOWLAN_TRIG_EAP_IDENT_REQUEST])
  capa->wowlan_triggers.eap_identity_req = 1;
 if (triggers[NL80211_WOWLAN_TRIG_4WAY_HANDSHAKE])
  capa->wowlan_triggers.four_way_handshake = 1;
 if (triggers[NL80211_WOWLAN_TRIG_RFKILL_RELEASE])
  capa->wowlan_triggers.rfkill_release = 1;
}
