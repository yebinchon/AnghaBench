
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct hostapd_data {TYPE_1__* conf; } ;
struct anqp_query_info {size_t num_extra_req; int* extra_req; } ;
struct TYPE_2__ {int ipaddr_type_configured; int venue_url; int fils_realms; int * domain_name; int * anqp_3gpp_cell_net; int * nai_realm_data; int * roaming_consortium; int * network_auth_type; int * venue_name; } ;
 int ANQP_FILS_REALM_INFO ;

 size_t ANQP_MAX_EXTRA_REQ ;


 int ANQP_REQ_3GPP_CELLULAR_NETWORK ;
 int ANQP_REQ_AP_CIVIC_LOCATION ;
 int ANQP_REQ_AP_GEOSPATIAL_LOCATION ;
 int ANQP_REQ_AP_LOCATION_PUBLIC_URI ;
 int ANQP_REQ_CAPABILITY_LIST ;
 int ANQP_REQ_DOMAIN_NAME ;
 int ANQP_REQ_EMERGENCY_ALERT_URI ;
 int ANQP_REQ_EMERGENCY_CALL_NUMBER ;
 int ANQP_REQ_EMERGENCY_NAI ;
 int ANQP_REQ_IP_ADDR_TYPE_AVAILABILITY ;
 int ANQP_REQ_NAI_REALM ;
 int ANQP_REQ_NETWORK_AUTH_TYPE ;
 int ANQP_REQ_ROAMING_CONSORTIUM ;
 int ANQP_REQ_TDLS_CAPABILITY ;
 int ANQP_REQ_VENUE_NAME ;



 int ANQP_VENUE_URL ;
 int MSG_DEBUG ;
 int dl_list_empty (int *) ;
 int * get_anqp_elem (struct hostapd_data*,int) ;
 int set_anqp_req (int ,char*,int,struct anqp_query_info*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void rx_anqp_query_list_id(struct hostapd_data *hapd, u16 info_id,
      struct anqp_query_info *qi)
{
 switch (info_id) {
 case 138:
  set_anqp_req(ANQP_REQ_CAPABILITY_LIST, "Capability List", 1,
        qi);
  break;
 case 128:
  set_anqp_req(ANQP_REQ_VENUE_NAME, "Venue Name",
        hapd->conf->venue_name != ((void*)0), qi);
  break;
 case 135:
  set_anqp_req(ANQP_REQ_EMERGENCY_CALL_NUMBER,
        "Emergency Call Number",
        get_anqp_elem(hapd, info_id) != ((void*)0), qi);
  break;
 case 131:
  set_anqp_req(ANQP_REQ_NETWORK_AUTH_TYPE, "Network Auth Type",
        hapd->conf->network_auth_type != ((void*)0), qi);
  break;
 case 130:
  set_anqp_req(ANQP_REQ_ROAMING_CONSORTIUM, "Roaming Consortium",
        hapd->conf->roaming_consortium != ((void*)0), qi);
  break;
 case 133:
  set_anqp_req(ANQP_REQ_IP_ADDR_TYPE_AVAILABILITY,
        "IP Addr Type Availability",
        hapd->conf->ipaddr_type_configured, qi);
  break;
 case 132:
  set_anqp_req(ANQP_REQ_NAI_REALM, "NAI Realm",
        hapd->conf->nai_realm_data != ((void*)0), qi);
  break;
 case 142:
  set_anqp_req(ANQP_REQ_3GPP_CELLULAR_NETWORK,
        "3GPP Cellular Network",
        hapd->conf->anqp_3gpp_cell_net != ((void*)0), qi);
  break;
 case 140:
  set_anqp_req(ANQP_REQ_AP_GEOSPATIAL_LOCATION,
        "AP Geospatial Location",
        get_anqp_elem(hapd, info_id) != ((void*)0), qi);
  break;
 case 141:
  set_anqp_req(ANQP_REQ_AP_CIVIC_LOCATION,
        "AP Civic Location",
        get_anqp_elem(hapd, info_id) != ((void*)0), qi);
  break;
 case 139:
  set_anqp_req(ANQP_REQ_AP_LOCATION_PUBLIC_URI,
        "AP Location Public URI",
        get_anqp_elem(hapd, info_id) != ((void*)0), qi);
  break;
 case 137:
  set_anqp_req(ANQP_REQ_DOMAIN_NAME, "Domain Name",
        hapd->conf->domain_name != ((void*)0), qi);
  break;
 case 136:
  set_anqp_req(ANQP_REQ_EMERGENCY_ALERT_URI,
        "Emergency Alert URI",
        get_anqp_elem(hapd, info_id) != ((void*)0), qi);
  break;
 case 129:
  set_anqp_req(ANQP_REQ_TDLS_CAPABILITY,
        "TDLS Capability",
        get_anqp_elem(hapd, info_id) != ((void*)0), qi);
  break;
 case 134:
  set_anqp_req(ANQP_REQ_EMERGENCY_NAI,
        "Emergency NAI",
        get_anqp_elem(hapd, info_id) != ((void*)0), qi);
  break;
 default:







  if (info_id == ANQP_VENUE_URL && hapd->conf->venue_url) {
   wpa_printf(MSG_DEBUG,
       "ANQP: Venue URL (local)");
  } else if (!get_anqp_elem(hapd, info_id)) {
   wpa_printf(MSG_DEBUG, "ANQP: Unsupported Info Id %u",
       info_id);
   break;
  }
  if (qi->num_extra_req == ANQP_MAX_EXTRA_REQ) {
   wpa_printf(MSG_DEBUG,
       "ANQP: No more room for extra requests - ignore Info Id %u",
       info_id);
   break;
  }
  wpa_printf(MSG_DEBUG, "ANQP: Info Id %u (local)", info_id);
  qi->extra_req[qi->num_extra_req] = info_id;
  qi->num_extra_req++;
  break;
 }
}
