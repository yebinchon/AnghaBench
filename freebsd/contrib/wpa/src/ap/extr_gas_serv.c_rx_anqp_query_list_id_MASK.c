#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct hostapd_data {TYPE_1__* conf; } ;
struct anqp_query_info {size_t num_extra_req; int* extra_req; } ;
struct TYPE_2__ {int ipaddr_type_configured; int /*<<< orphan*/  venue_url; int /*<<< orphan*/  fils_realms; int /*<<< orphan*/ * domain_name; int /*<<< orphan*/ * anqp_3gpp_cell_net; int /*<<< orphan*/ * nai_realm_data; int /*<<< orphan*/ * roaming_consortium; int /*<<< orphan*/ * network_auth_type; int /*<<< orphan*/ * venue_name; } ;

/* Variables and functions */
#define  ANQP_3GPP_CELLULAR_NETWORK 142 
#define  ANQP_AP_CIVIC_LOCATION 141 
#define  ANQP_AP_GEOSPATIAL_LOCATION 140 
#define  ANQP_AP_LOCATION_PUBLIC_URI 139 
#define  ANQP_CAPABILITY_LIST 138 
#define  ANQP_DOMAIN_NAME 137 
#define  ANQP_EMERGENCY_ALERT_URI 136 
#define  ANQP_EMERGENCY_CALL_NUMBER 135 
#define  ANQP_EMERGENCY_NAI 134 
 int ANQP_FILS_REALM_INFO ; 
#define  ANQP_IP_ADDR_TYPE_AVAILABILITY 133 
 size_t ANQP_MAX_EXTRA_REQ ; 
#define  ANQP_NAI_REALM 132 
#define  ANQP_NETWORK_AUTH_TYPE 131 
 int /*<<< orphan*/  ANQP_REQ_3GPP_CELLULAR_NETWORK ; 
 int /*<<< orphan*/  ANQP_REQ_AP_CIVIC_LOCATION ; 
 int /*<<< orphan*/  ANQP_REQ_AP_GEOSPATIAL_LOCATION ; 
 int /*<<< orphan*/  ANQP_REQ_AP_LOCATION_PUBLIC_URI ; 
 int /*<<< orphan*/  ANQP_REQ_CAPABILITY_LIST ; 
 int /*<<< orphan*/  ANQP_REQ_DOMAIN_NAME ; 
 int /*<<< orphan*/  ANQP_REQ_EMERGENCY_ALERT_URI ; 
 int /*<<< orphan*/  ANQP_REQ_EMERGENCY_CALL_NUMBER ; 
 int /*<<< orphan*/  ANQP_REQ_EMERGENCY_NAI ; 
 int /*<<< orphan*/  ANQP_REQ_IP_ADDR_TYPE_AVAILABILITY ; 
 int /*<<< orphan*/  ANQP_REQ_NAI_REALM ; 
 int /*<<< orphan*/  ANQP_REQ_NETWORK_AUTH_TYPE ; 
 int /*<<< orphan*/  ANQP_REQ_ROAMING_CONSORTIUM ; 
 int /*<<< orphan*/  ANQP_REQ_TDLS_CAPABILITY ; 
 int /*<<< orphan*/  ANQP_REQ_VENUE_NAME ; 
#define  ANQP_ROAMING_CONSORTIUM 130 
#define  ANQP_TDLS_CAPABILITY 129 
#define  ANQP_VENUE_NAME 128 
 int ANQP_VENUE_URL ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (struct hostapd_data*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,struct anqp_query_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC4(struct hostapd_data *hapd, u16 info_id,
				  struct anqp_query_info *qi)
{
	switch (info_id) {
	case ANQP_CAPABILITY_LIST:
		FUNC2(ANQP_REQ_CAPABILITY_LIST, "Capability List", 1,
			     qi);
		break;
	case ANQP_VENUE_NAME:
		FUNC2(ANQP_REQ_VENUE_NAME, "Venue Name",
			     hapd->conf->venue_name != NULL, qi);
		break;
	case ANQP_EMERGENCY_CALL_NUMBER:
		FUNC2(ANQP_REQ_EMERGENCY_CALL_NUMBER,
			     "Emergency Call Number",
			     FUNC1(hapd, info_id) != NULL, qi);
		break;
	case ANQP_NETWORK_AUTH_TYPE:
		FUNC2(ANQP_REQ_NETWORK_AUTH_TYPE, "Network Auth Type",
			     hapd->conf->network_auth_type != NULL, qi);
		break;
	case ANQP_ROAMING_CONSORTIUM:
		FUNC2(ANQP_REQ_ROAMING_CONSORTIUM, "Roaming Consortium",
			     hapd->conf->roaming_consortium != NULL, qi);
		break;
	case ANQP_IP_ADDR_TYPE_AVAILABILITY:
		FUNC2(ANQP_REQ_IP_ADDR_TYPE_AVAILABILITY,
			     "IP Addr Type Availability",
			     hapd->conf->ipaddr_type_configured, qi);
		break;
	case ANQP_NAI_REALM:
		FUNC2(ANQP_REQ_NAI_REALM, "NAI Realm",
			     hapd->conf->nai_realm_data != NULL, qi);
		break;
	case ANQP_3GPP_CELLULAR_NETWORK:
		FUNC2(ANQP_REQ_3GPP_CELLULAR_NETWORK,
			     "3GPP Cellular Network",
			     hapd->conf->anqp_3gpp_cell_net != NULL, qi);
		break;
	case ANQP_AP_GEOSPATIAL_LOCATION:
		FUNC2(ANQP_REQ_AP_GEOSPATIAL_LOCATION,
			     "AP Geospatial Location",
			     FUNC1(hapd, info_id) != NULL, qi);
		break;
	case ANQP_AP_CIVIC_LOCATION:
		FUNC2(ANQP_REQ_AP_CIVIC_LOCATION,
			     "AP Civic Location",
			     FUNC1(hapd, info_id) != NULL, qi);
		break;
	case ANQP_AP_LOCATION_PUBLIC_URI:
		FUNC2(ANQP_REQ_AP_LOCATION_PUBLIC_URI,
			     "AP Location Public URI",
			     FUNC1(hapd, info_id) != NULL, qi);
		break;
	case ANQP_DOMAIN_NAME:
		FUNC2(ANQP_REQ_DOMAIN_NAME, "Domain Name",
			     hapd->conf->domain_name != NULL, qi);
		break;
	case ANQP_EMERGENCY_ALERT_URI:
		FUNC2(ANQP_REQ_EMERGENCY_ALERT_URI,
			     "Emergency Alert URI",
			     FUNC1(hapd, info_id) != NULL, qi);
		break;
	case ANQP_TDLS_CAPABILITY:
		FUNC2(ANQP_REQ_TDLS_CAPABILITY,
			     "TDLS Capability",
			     FUNC1(hapd, info_id) != NULL, qi);
		break;
	case ANQP_EMERGENCY_NAI:
		FUNC2(ANQP_REQ_EMERGENCY_NAI,
			     "Emergency NAI",
			     FUNC1(hapd, info_id) != NULL, qi);
		break;
	default:
#ifdef CONFIG_FILS
		if (info_id == ANQP_FILS_REALM_INFO &&
		    !dl_list_empty(&hapd->conf->fils_realms)) {
			wpa_printf(MSG_DEBUG,
				   "ANQP: FILS Realm Information (local)");
		} else
#endif /* CONFIG_FILS */
		if (info_id == ANQP_VENUE_URL && hapd->conf->venue_url) {
			FUNC3(MSG_DEBUG,
				   "ANQP: Venue URL (local)");
		} else if (!FUNC1(hapd, info_id)) {
			FUNC3(MSG_DEBUG, "ANQP: Unsupported Info Id %u",
				   info_id);
			break;
		}
		if (qi->num_extra_req == ANQP_MAX_EXTRA_REQ) {
			FUNC3(MSG_DEBUG,
				   "ANQP: No more room for extra requests - ignore Info Id %u",
				   info_id);
			break;
		}
		FUNC3(MSG_DEBUG, "ANQP: Info Id %u (local)", info_id);
		qi->extra_req[qi->num_extra_req] = info_id;
		qi->num_extra_req++;
		break;
	}
}