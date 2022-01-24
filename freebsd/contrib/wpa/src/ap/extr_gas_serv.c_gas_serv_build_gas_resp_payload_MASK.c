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
typedef  unsigned int u16 ;
struct wpabuf {int dummy; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {int /*<<< orphan*/  fils_realms; } ;

/* Variables and functions */
 unsigned int const ANQP_AP_CIVIC_LOCATION ; 
 unsigned int const ANQP_AP_GEOSPATIAL_LOCATION ; 
 unsigned int const ANQP_AP_LOCATION_PUBLIC_URI ; 
 unsigned int const ANQP_EMERGENCY_ALERT_URI ; 
 unsigned int const ANQP_EMERGENCY_CALL_NUMBER ; 
 unsigned int const ANQP_EMERGENCY_NAI ; 
 unsigned int ANQP_FILS_REALM_INFO ; 
 unsigned int ANQP_REQ_3GPP_CELLULAR_NETWORK ; 
 unsigned int ANQP_REQ_AP_CIVIC_LOCATION ; 
 unsigned int ANQP_REQ_AP_GEOSPATIAL_LOCATION ; 
 unsigned int ANQP_REQ_AP_LOCATION_PUBLIC_URI ; 
 unsigned int ANQP_REQ_CAPABILITY_LIST ; 
 unsigned int ANQP_REQ_CONNECTION_CAPABILITY ; 
 unsigned int ANQP_REQ_DOMAIN_NAME ; 
 unsigned int ANQP_REQ_EMERGENCY_ALERT_URI ; 
 unsigned int ANQP_REQ_EMERGENCY_CALL_NUMBER ; 
 unsigned int ANQP_REQ_EMERGENCY_NAI ; 
 unsigned int ANQP_REQ_HS_CAPABILITY_LIST ; 
 unsigned int ANQP_REQ_ICON_REQUEST ; 
 unsigned int ANQP_REQ_IP_ADDR_TYPE_AVAILABILITY ; 
 unsigned int ANQP_REQ_MBO_CELL_DATA_CONN_PREF ; 
 unsigned int ANQP_REQ_NAI_HOME_REALM ; 
 unsigned int ANQP_REQ_NAI_REALM ; 
 unsigned int ANQP_REQ_NETWORK_AUTH_TYPE ; 
 unsigned int ANQP_REQ_OPERATING_CLASS ; 
 unsigned int ANQP_REQ_OPERATOR_FRIENDLY_NAME ; 
 unsigned int ANQP_REQ_OPERATOR_ICON_METADATA ; 
 unsigned int ANQP_REQ_OSU_PROVIDERS_LIST ; 
 unsigned int ANQP_REQ_OSU_PROVIDERS_NAI_LIST ; 
 unsigned int ANQP_REQ_ROAMING_CONSORTIUM ; 
 unsigned int ANQP_REQ_TDLS_CAPABILITY ; 
 unsigned int ANQP_REQ_VENUE_NAME ; 
 unsigned int ANQP_REQ_WAN_METRICS ; 
 unsigned int const ANQP_TDLS_CAPABILITY ; 
 unsigned int const ANQP_VENUE_URL ; 
 int /*<<< orphan*/  FUNC0 (struct hostapd_data*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_data*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct hostapd_data*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct hostapd_data*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct hostapd_data*,struct wpabuf*,unsigned int const) ; 
 int /*<<< orphan*/  FUNC5 (struct hostapd_data*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct hostapd_data*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct hostapd_data*,struct wpabuf*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct hostapd_data*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct hostapd_data*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC10 (struct hostapd_data*,struct wpabuf*,int /*<<< orphan*/  const*,size_t,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct hostapd_data*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC12 (struct hostapd_data*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC13 (struct hostapd_data*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC14 (struct hostapd_data*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC15 (struct hostapd_data*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC16 (struct hostapd_data*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC17 (struct hostapd_data*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC18 (struct hostapd_data*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC19 (struct hostapd_data*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC20 (struct hostapd_data*,struct wpabuf*) ; 
 scalar_t__ FUNC21 (struct hostapd_data*,unsigned int const*,unsigned int) ; 
 int FUNC22 (int /*<<< orphan*/ *) ; 
 struct wpabuf* FUNC23 (size_t) ; 

__attribute__((used)) static struct wpabuf *
FUNC24(struct hostapd_data *hapd,
				unsigned int request,
				const u8 *home_realm, size_t home_realm_len,
				const u8 *icon_name, size_t icon_name_len,
				const u16 *extra_req,
				unsigned int num_extra_req)
{
	struct wpabuf *buf;
	size_t len;
	unsigned int i;

	len = 1400;
	if (request & (ANQP_REQ_NAI_REALM | ANQP_REQ_NAI_HOME_REALM))
		len += 1000;
	if (request & ANQP_REQ_ICON_REQUEST)
		len += 65536;
#ifdef CONFIG_FILS
	if (request & ANQP_FILS_REALM_INFO)
		len += 2 * dl_list_len(&hapd->conf->fils_realms);
#endif /* CONFIG_FILS */
	len += FUNC21(hapd, extra_req, num_extra_req);

	buf = FUNC23(len);
	if (buf == NULL)
		return NULL;

	if (request & ANQP_REQ_CAPABILITY_LIST)
		FUNC1(hapd, buf);
	if (request & ANQP_REQ_VENUE_NAME)
		FUNC18(hapd, buf);
	if (request & ANQP_REQ_EMERGENCY_CALL_NUMBER)
		FUNC4(hapd, buf, ANQP_EMERGENCY_CALL_NUMBER);
	if (request & ANQP_REQ_NETWORK_AUTH_TYPE)
		FUNC11(hapd, buf);
	if (request & ANQP_REQ_ROAMING_CONSORTIUM)
		FUNC17(hapd, buf);
	if (request & ANQP_REQ_IP_ADDR_TYPE_AVAILABILITY)
		FUNC8(hapd, buf);
	if (request & (ANQP_REQ_NAI_REALM | ANQP_REQ_NAI_HOME_REALM))
		FUNC10(hapd, buf, home_realm, home_realm_len,
				   request & ANQP_REQ_NAI_REALM,
				   request & ANQP_REQ_NAI_HOME_REALM);
	if (request & ANQP_REQ_3GPP_CELLULAR_NETWORK)
		FUNC0(hapd, buf);
	if (request & ANQP_REQ_AP_GEOSPATIAL_LOCATION)
		FUNC4(hapd, buf, ANQP_AP_GEOSPATIAL_LOCATION);
	if (request & ANQP_REQ_AP_CIVIC_LOCATION)
		FUNC4(hapd, buf, ANQP_AP_CIVIC_LOCATION);
	if (request & ANQP_REQ_AP_LOCATION_PUBLIC_URI)
		FUNC4(hapd, buf, ANQP_AP_LOCATION_PUBLIC_URI);
	if (request & ANQP_REQ_DOMAIN_NAME)
		FUNC3(hapd, buf);
	if (request & ANQP_REQ_EMERGENCY_ALERT_URI)
		FUNC4(hapd, buf, ANQP_EMERGENCY_ALERT_URI);
	if (request & ANQP_REQ_TDLS_CAPABILITY)
		FUNC4(hapd, buf, ANQP_TDLS_CAPABILITY);
	if (request & ANQP_REQ_EMERGENCY_NAI)
		FUNC4(hapd, buf, ANQP_EMERGENCY_NAI);

	for (i = 0; i < num_extra_req; i++) {
#ifdef CONFIG_FILS
		if (extra_req[i] == ANQP_FILS_REALM_INFO) {
			anqp_add_fils_realm_info(hapd, buf);
			continue;
		}
#endif /* CONFIG_FILS */
		if (extra_req[i] == ANQP_VENUE_URL) {
			FUNC19(hapd, buf);
			continue;
		}
		FUNC4(hapd, buf, extra_req[i]);
	}

#ifdef CONFIG_HS20
	if (request & ANQP_REQ_HS_CAPABILITY_LIST)
		anqp_add_hs_capab_list(hapd, buf);
	if (request & ANQP_REQ_OPERATOR_FRIENDLY_NAME)
		anqp_add_operator_friendly_name(hapd, buf);
	if (request & ANQP_REQ_WAN_METRICS)
		anqp_add_wan_metrics(hapd, buf);
	if (request & ANQP_REQ_CONNECTION_CAPABILITY)
		anqp_add_connection_capability(hapd, buf);
	if (request & ANQP_REQ_OPERATING_CLASS)
		anqp_add_operating_class(hapd, buf);
	if (request & ANQP_REQ_OSU_PROVIDERS_LIST)
		anqp_add_osu_providers_list(hapd, buf);
	if (request & ANQP_REQ_ICON_REQUEST)
		anqp_add_icon_binary_file(hapd, buf, icon_name, icon_name_len);
	if (request & ANQP_REQ_OPERATOR_ICON_METADATA)
		anqp_add_operator_icon_metadata(hapd, buf);
	if (request & ANQP_REQ_OSU_PROVIDERS_NAI_LIST)
		anqp_add_osu_providers_nai_list(hapd, buf);
#endif /* CONFIG_HS20 */

#ifdef CONFIG_MBO
	if (request & ANQP_REQ_MBO_CELL_DATA_CONN_PREF)
		anqp_add_mbo_cell_data_conn_pref(hapd, buf);
#endif /* CONFIG_MBO */

	return buf;
}