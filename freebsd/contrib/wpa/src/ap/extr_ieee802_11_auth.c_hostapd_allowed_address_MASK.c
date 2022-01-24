#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct vlan_description {int dummy; } ;
struct hostapd_sta_wpa_psk_short {int dummy; } ;
struct hostapd_data {struct hostapd_acl_query_data* acl_queries; TYPE_3__* conf; } ;
struct hostapd_acl_query_data {size_t auth_msg_len; struct hostapd_acl_query_data* next; int /*<<< orphan*/ * auth_msg; int /*<<< orphan*/  addr; int /*<<< orphan*/  timestamp; } ;
struct TYPE_4__ {scalar_t__ dynamic_vlan; } ;
struct TYPE_6__ {scalar_t__ macaddr_acl; TYPE_2__* radius; TYPE_1__ ssid; } ;
struct TYPE_5__ {int /*<<< orphan*/  auth_server; } ;

/* Variables and functions */
 scalar_t__ DYNAMIC_VLAN_DISABLED ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int HOSTAPD_ACL_ACCEPT ; 
 int HOSTAPD_ACL_ACCEPT_TIMEOUT ; 
 int HOSTAPD_ACL_PENDING ; 
 int HOSTAPD_ACL_REJECT ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 scalar_t__ USE_EXTERNAL_RADIUS_AUTH ; 
 int FUNC0 (struct hostapd_data*,int /*<<< orphan*/  const*,scalar_t__*,scalar_t__*,struct vlan_description*,struct hostapd_sta_wpa_psk_short**,char**,char**) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_acl_query_data*) ; 
 int FUNC2 (struct hostapd_data*,int /*<<< orphan*/  const*,struct vlan_description*) ; 
 scalar_t__ FUNC3 (struct hostapd_data*,int /*<<< orphan*/  const*,struct hostapd_acl_query_data*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct vlan_description*,int /*<<< orphan*/ ,int) ; 
 struct hostapd_acl_query_data* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 

int FUNC12(struct hostapd_data *hapd, const u8 *addr,
			    const u8 *msg, size_t len, u32 *session_timeout,
			    u32 *acct_interim_interval,
			    struct vlan_description *vlan_id,
			    struct hostapd_sta_wpa_psk_short **psk,
			    char **identity, char **radius_cui,
			    int is_probe_req)
{
	int res;

	if (session_timeout)
		*session_timeout = 0;
	if (acct_interim_interval)
		*acct_interim_interval = 0;
	if (vlan_id)
		FUNC9(vlan_id, 0, sizeof(*vlan_id));
	if (psk)
		*psk = NULL;
	if (identity)
		*identity = NULL;
	if (radius_cui)
		*radius_cui = NULL;

	res = FUNC2(hapd, addr, vlan_id);
	if (res != HOSTAPD_ACL_PENDING)
		return res;

	if (hapd->conf->macaddr_acl == USE_EXTERNAL_RADIUS_AUTH) {
#ifdef CONFIG_NO_RADIUS
		return HOSTAPD_ACL_REJECT;
#else /* CONFIG_NO_RADIUS */
		struct hostapd_acl_query_data *query;

		if (is_probe_req) {
			/* Skip RADIUS queries for Probe Request frames to avoid
			 * excessive load on the authentication server. */
			return HOSTAPD_ACL_ACCEPT;
		};

		if (hapd->conf->ssid.dynamic_vlan == DYNAMIC_VLAN_DISABLED)
			vlan_id = NULL;

		/* Check whether ACL cache has an entry for this station */
		res = FUNC0(hapd, addr, session_timeout,
					    acct_interim_interval, vlan_id, psk,
					    identity, radius_cui);
		if (res == HOSTAPD_ACL_ACCEPT ||
		    res == HOSTAPD_ACL_ACCEPT_TIMEOUT)
			return res;
		if (res == HOSTAPD_ACL_REJECT)
			return HOSTAPD_ACL_REJECT;

		query = hapd->acl_queries;
		while (query) {
			if (FUNC6(query->addr, addr, ETH_ALEN) == 0) {
				/* pending query in RADIUS retransmit queue;
				 * do not generate a new one */
				if (identity) {
					FUNC4(*identity);
					*identity = NULL;
				}
				if (radius_cui) {
					FUNC4(*radius_cui);
					*radius_cui = NULL;
				}
				return HOSTAPD_ACL_PENDING;
			}
			query = query->next;
		}

		if (!hapd->conf->radius->auth_server)
			return HOSTAPD_ACL_REJECT;

		/* No entry in the cache - query external RADIUS server */
		query = FUNC10(sizeof(*query));
		if (query == NULL) {
			FUNC11(MSG_ERROR, "malloc for query data failed");
			return HOSTAPD_ACL_REJECT;
		}
		FUNC5(&query->timestamp);
		FUNC7(query->addr, addr, ETH_ALEN);
		if (FUNC3(hapd, addr, query)) {
			FUNC11(MSG_DEBUG, "Failed to send Access-Request "
				   "for ACL query.");
			FUNC1(query);
			return HOSTAPD_ACL_REJECT;
		}

		query->auth_msg = FUNC8(msg, len);
		if (query->auth_msg == NULL) {
			FUNC11(MSG_ERROR, "Failed to allocate memory for "
				   "auth frame.");
			FUNC1(query);
			return HOSTAPD_ACL_REJECT;
		}
		query->auth_msg_len = len;
		query->next = hapd->acl_queries;
		hapd->acl_queries = query;

		/* Queued data will be processed in hostapd_acl_recv_radius()
		 * when RADIUS server replies to the sent Access-Request. */
		return HOSTAPD_ACL_PENDING;
#endif /* CONFIG_NO_RADIUS */
	}

	return HOSTAPD_ACL_REJECT;
}