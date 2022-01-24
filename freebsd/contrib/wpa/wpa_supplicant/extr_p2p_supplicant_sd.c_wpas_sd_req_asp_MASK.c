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
typedef  char u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {TYPE_1__* global; } ;
struct p2ps_advertisement {char state; scalar_t__ svc_info; scalar_t__ svc_name; int /*<<< orphan*/  config_methods; int /*<<< orphan*/  id; struct p2ps_advertisement* next; } ;
struct TYPE_2__ {int /*<<< orphan*/  p2p; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 char P2P_SD_SUCCESS ; 
 char P2P_SERV_P2PS ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ FUNC1 (struct p2ps_advertisement*,char const*,size_t) ; 
 scalar_t__ FUNC2 (scalar_t__,char const*,size_t) ; 
 size_t FUNC3 (scalar_t__) ; 
 struct p2ps_advertisement* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC7 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*,char) ; 
 size_t FUNC13 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC14 (struct wpabuf*,char,char) ; 
 int /*<<< orphan*/  FUNC15 (struct wpabuf*,char,char) ; 
 int /*<<< orphan*/  FUNC16 (struct wpabuf*,char,char) ; 

__attribute__((used)) static void FUNC17(struct wpa_supplicant *wpa_s,
			    struct wpabuf *resp, u8 srv_trans_id,
			    const u8 *query, size_t query_len)
{
	struct p2ps_advertisement *adv_data;
	const u8 *svc = &query[1];
	const u8 *info = NULL;
	size_t svc_len = query[0];
	size_t info_len = 0;
	int prefix = 0;
	u8 *count_pos = NULL;
	u8 *len_pos = NULL;

	FUNC5(MSG_DEBUG, "P2P: SD Request for ASP", query, query_len);

	if (!wpa_s->global->p2p) {
		FUNC6(MSG_DEBUG, "P2P: ASP protocol not available");
		FUNC16(resp, P2P_SERV_P2PS, srv_trans_id);
		return;
	}

	/* Info block is optional */
	if (svc_len + 1 < query_len) {
		info = &svc[svc_len];
		info_len = *info++;
	}

	/* Range check length of svc string and info block */
	if (svc_len + (info_len ? info_len + 2 : 1) > query_len) {
		FUNC6(MSG_DEBUG, "P2P: ASP bad request");
		FUNC14(resp, P2P_SERV_P2PS, srv_trans_id);
		return;
	}

	/* Detect and correct for prefix search */
	if (svc_len && svc[svc_len - 1] == '*') {
		prefix = 1;
		svc_len--;
	}

	for (adv_data = FUNC4(wpa_s->global->p2p);
	     adv_data; adv_data = adv_data->next) {
		/* If not a prefix match, reject length mismatches */
		if (!prefix && svc_len != FUNC3(adv_data->svc_name))
			continue;

		/* Search each service for request */
		if (FUNC2(adv_data->svc_name, svc, svc_len) == 0 &&
		    FUNC1(adv_data, info, info_len)) {
			size_t len = FUNC3(adv_data->svc_name);
			size_t svc_info_len = 0;

			if (adv_data->svc_info)
				svc_info_len = FUNC3(adv_data->svc_info);

			if (len > 0xff || svc_info_len > 0xffff)
				return;

			/* Length & Count to be filled as we go */
			if (!len_pos && !count_pos) {
				if (FUNC13(resp) <
				    len + svc_info_len + 16)
					return;

				len_pos = FUNC7(resp, 2);
				FUNC12(resp, P2P_SERV_P2PS);
				FUNC12(resp, srv_trans_id);
				/* Status Code */
				FUNC12(resp, P2P_SD_SUCCESS);
				count_pos = FUNC7(resp, 1);
				*count_pos = 0;
			} else if (FUNC13(resp) <
				   len + svc_info_len + 10)
				return;

			if (svc_info_len) {
				FUNC6(MSG_DEBUG,
					   "P2P: Add Svc: %s info: %s",
					   adv_data->svc_name,
					   adv_data->svc_info);
			} else {
				FUNC6(MSG_DEBUG, "P2P: Add Svc: %s",
					   adv_data->svc_name);
			}

			/* Advertisement ID */
			FUNC11(resp, adv_data->id);

			/* Config Methods */
			FUNC8(resp, adv_data->config_methods);

			/* Service Name */
			FUNC12(resp, (u8) len);
			FUNC9(resp, adv_data->svc_name, len);

			/* Service State */
			FUNC12(resp, adv_data->state);

			/* Service Information */
			FUNC10(resp, (u16) svc_info_len);
			FUNC9(resp, adv_data->svc_info, svc_info_len);

			/* Update length and count */
			(*count_pos)++;
			FUNC0(len_pos,
				     (u8 *) FUNC7(resp, 0) - len_pos - 2);
		}
	}

	/* Return error if no matching svc found */
	if (count_pos == NULL) {
		FUNC6(MSG_DEBUG, "P2P: ASP service not found");
		FUNC15(resp, P2P_SERV_P2PS, srv_trans_id);
	}
}