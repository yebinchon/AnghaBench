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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct wpabuf {int dummy; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {scalar_t__ venue_url; int /*<<< orphan*/  fils_realms; scalar_t__ domain_name; scalar_t__ anqp_3gpp_cell_net; scalar_t__ nai_realm_data; scalar_t__ ipaddr_type_configured; scalar_t__ roaming_consortium; scalar_t__ network_auth_type; scalar_t__ venue_name; } ;

/* Variables and functions */
 int ANQP_3GPP_CELLULAR_NETWORK ; 
 int ANQP_ADVICE_OF_CHARGE ; 
 int ANQP_AP_CIVIC_LOCATION ; 
 int ANQP_AP_GEOSPATIAL_LOCATION ; 
 int ANQP_AP_LOCATION_PUBLIC_URI ; 
 int ANQP_CAG ; 
 int ANQP_CAPABILITY_LIST ; 
 int ANQP_DOMAIN_NAME ; 
 int ANQP_EMERGENCY_ALERT_URI ; 
 int ANQP_EMERGENCY_CALL_NUMBER ; 
 int ANQP_EMERGENCY_NAI ; 
 int ANQP_FILS_REALM_INFO ; 
 int ANQP_IP_ADDR_TYPE_AVAILABILITY ; 
 int ANQP_LOCAL_CONTENT ; 
 int ANQP_NAI_REALM ; 
 int ANQP_NEIGHBOR_REPORT ; 
 int ANQP_NETWORK_AUTH_TYPE ; 
 int ANQP_ROAMING_CONSORTIUM ; 
 int ANQP_TDLS_CAPABILITY ; 
 int ANQP_VENUE_NAME ; 
 int ANQP_VENUE_URL ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_data*,struct wpabuf*) ; 
 scalar_t__ FUNC1 (struct hostapd_data*,struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct hostapd_data*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,int) ; 

__attribute__((used)) static void FUNC7(struct hostapd_data *hapd,
				struct wpabuf *buf)
{
	u8 *len;
	u16 id;

	if (FUNC1(hapd, buf, ANQP_CAPABILITY_LIST))
		return;

	len = FUNC3(buf, ANQP_CAPABILITY_LIST);
	FUNC6(buf, ANQP_CAPABILITY_LIST);
	if (hapd->conf->venue_name || FUNC5(hapd, ANQP_VENUE_NAME))
		FUNC6(buf, ANQP_VENUE_NAME);
	if (FUNC5(hapd, ANQP_EMERGENCY_CALL_NUMBER))
		FUNC6(buf, ANQP_EMERGENCY_CALL_NUMBER);
	if (hapd->conf->network_auth_type ||
	    FUNC5(hapd, ANQP_NETWORK_AUTH_TYPE))
		FUNC6(buf, ANQP_NETWORK_AUTH_TYPE);
	if (hapd->conf->roaming_consortium ||
	    FUNC5(hapd, ANQP_ROAMING_CONSORTIUM))
		FUNC6(buf, ANQP_ROAMING_CONSORTIUM);
	if (hapd->conf->ipaddr_type_configured ||
	    FUNC5(hapd, ANQP_IP_ADDR_TYPE_AVAILABILITY))
		FUNC6(buf, ANQP_IP_ADDR_TYPE_AVAILABILITY);
	if (hapd->conf->nai_realm_data ||
	    FUNC5(hapd, ANQP_NAI_REALM))
		FUNC6(buf, ANQP_NAI_REALM);
	if (hapd->conf->anqp_3gpp_cell_net ||
	    FUNC5(hapd, ANQP_3GPP_CELLULAR_NETWORK))
		FUNC6(buf, ANQP_3GPP_CELLULAR_NETWORK);
	if (FUNC5(hapd, ANQP_AP_GEOSPATIAL_LOCATION))
		FUNC6(buf, ANQP_AP_GEOSPATIAL_LOCATION);
	if (FUNC5(hapd, ANQP_AP_CIVIC_LOCATION))
		FUNC6(buf, ANQP_AP_CIVIC_LOCATION);
	if (FUNC5(hapd, ANQP_AP_LOCATION_PUBLIC_URI))
		FUNC6(buf, ANQP_AP_LOCATION_PUBLIC_URI);
	if (hapd->conf->domain_name || FUNC5(hapd, ANQP_DOMAIN_NAME))
		FUNC6(buf, ANQP_DOMAIN_NAME);
	if (FUNC5(hapd, ANQP_EMERGENCY_ALERT_URI))
		FUNC6(buf, ANQP_EMERGENCY_ALERT_URI);
	if (FUNC5(hapd, ANQP_TDLS_CAPABILITY))
		FUNC6(buf, ANQP_TDLS_CAPABILITY);
	if (FUNC5(hapd, ANQP_EMERGENCY_NAI))
		FUNC6(buf, ANQP_EMERGENCY_NAI);
	if (FUNC5(hapd, ANQP_NEIGHBOR_REPORT))
		FUNC6(buf, ANQP_NEIGHBOR_REPORT);
#ifdef CONFIG_FILS
	if (!dl_list_empty(&hapd->conf->fils_realms) ||
	    get_anqp_elem(hapd, ANQP_FILS_REALM_INFO))
		wpabuf_put_le16(buf, ANQP_FILS_REALM_INFO);
#endif /* CONFIG_FILS */
	if (FUNC5(hapd, ANQP_CAG))
		FUNC6(buf, ANQP_CAG);
	if (hapd->conf->venue_url || FUNC5(hapd, ANQP_VENUE_URL))
		FUNC6(buf, ANQP_VENUE_URL);
	if (FUNC5(hapd, ANQP_ADVICE_OF_CHARGE))
		FUNC6(buf, ANQP_ADVICE_OF_CHARGE);
	if (FUNC5(hapd, ANQP_LOCAL_CONTENT))
		FUNC6(buf, ANQP_LOCAL_CONTENT);
	for (id = 280; id < 300; id++) {
		if (FUNC5(hapd, id))
			FUNC6(buf, id);
	}
#ifdef CONFIG_HS20
	anqp_add_hs_capab_list(hapd, buf);
#endif /* CONFIG_HS20 */
	FUNC4(buf, len);
}