#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct sta_info {int radius_das_match; struct sta_info* next; TYPE_1__* eapol_sm; scalar_t__ acct_session_id; } ;
struct radius_das_attrs {int acct_session_id_len; int acct_multi_session_id_len; char* cui; size_t cui_len; char* user_name; size_t user_name_len; int /*<<< orphan*/ * acct_multi_session_id; int /*<<< orphan*/ * acct_session_id; scalar_t__ sta_addr; } ;
struct hostapd_data {struct sta_info* sta_list; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {scalar_t__ acct_multi_session_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 struct sta_info* FUNC0 (struct hostapd_data*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,size_t*) ; 
 struct wpabuf* FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC6 (struct wpabuf*) ; 
 size_t FUNC7 (struct wpabuf*) ; 

__attribute__((used)) static struct sta_info * FUNC8(struct hostapd_data *hapd,
					      struct radius_das_attrs *attr,
					      int *multi)
{
	struct sta_info *selected, *sta;
	char buf[128];
	int num_attr = 0;
	int count;

	*multi = 0;

	for (sta = hapd->sta_list; sta; sta = sta->next)
		sta->radius_das_match = 1;

	if (attr->sta_addr) {
		num_attr++;
		sta = FUNC0(hapd, attr->sta_addr);
		if (!sta) {
			FUNC5(MSG_DEBUG,
				   "RADIUS DAS: No Calling-Station-Id match");
			return NULL;
		}

		selected = sta;
		for (sta = hapd->sta_list; sta; sta = sta->next) {
			if (sta != selected)
				sta->radius_das_match = 0;
		}
		FUNC5(MSG_DEBUG, "RADIUS DAS: Calling-Station-Id match");
	}

	if (attr->acct_session_id) {
		num_attr++;
		if (attr->acct_session_id_len != 16) {
			FUNC5(MSG_DEBUG,
				   "RADIUS DAS: Acct-Session-Id cannot match");
			return NULL;
		}
		count = 0;

		for (sta = hapd->sta_list; sta; sta = sta->next) {
			if (!sta->radius_das_match)
				continue;
			FUNC4(buf, sizeof(buf), "%016llX",
				    (unsigned long long) sta->acct_session_id);
			if (FUNC3(attr->acct_session_id, buf, 16) != 0)
				sta->radius_das_match = 0;
			else
				count++;
		}

		if (count == 0) {
			FUNC5(MSG_DEBUG,
				   "RADIUS DAS: No matches remaining after Acct-Session-Id check");
			return NULL;
		}
		FUNC5(MSG_DEBUG, "RADIUS DAS: Acct-Session-Id match");
	}

	if (attr->acct_multi_session_id) {
		num_attr++;
		if (attr->acct_multi_session_id_len != 16) {
			FUNC5(MSG_DEBUG,
				   "RADIUS DAS: Acct-Multi-Session-Id cannot match");
			return NULL;
		}
		count = 0;

		for (sta = hapd->sta_list; sta; sta = sta->next) {
			if (!sta->radius_das_match)
				continue;
			if (!sta->eapol_sm ||
			    !sta->eapol_sm->acct_multi_session_id) {
				sta->radius_das_match = 0;
				continue;
			}
			FUNC4(buf, sizeof(buf), "%016llX",
				    (unsigned long long)
				    sta->eapol_sm->acct_multi_session_id);
			if (FUNC3(attr->acct_multi_session_id, buf, 16) !=
			    0)
				sta->radius_das_match = 0;
			else
				count++;
		}

		if (count == 0) {
			FUNC5(MSG_DEBUG,
				   "RADIUS DAS: No matches remaining after Acct-Multi-Session-Id check");
			return NULL;
		}
		FUNC5(MSG_DEBUG,
			   "RADIUS DAS: Acct-Multi-Session-Id match");
	}

	if (attr->cui) {
		num_attr++;
		count = 0;

		for (sta = hapd->sta_list; sta; sta = sta->next) {
			struct wpabuf *cui;

			if (!sta->radius_das_match)
				continue;
			cui = FUNC2(sta->eapol_sm);
			if (!cui || FUNC7(cui) != attr->cui_len ||
			    FUNC3(FUNC6(cui), attr->cui,
				      attr->cui_len) != 0)
				sta->radius_das_match = 0;
			else
				count++;
		}

		if (count == 0) {
			FUNC5(MSG_DEBUG,
				   "RADIUS DAS: No matches remaining after Chargeable-User-Identity check");
			return NULL;
		}
		FUNC5(MSG_DEBUG,
			   "RADIUS DAS: Chargeable-User-Identity match");
	}

	if (attr->user_name) {
		num_attr++;
		count = 0;

		for (sta = hapd->sta_list; sta; sta = sta->next) {
			u8 *identity;
			size_t identity_len;

			if (!sta->radius_das_match)
				continue;
			identity = FUNC1(sta->eapol_sm,
							   &identity_len);
			if (!identity ||
			    identity_len != attr->user_name_len ||
			    FUNC3(identity, attr->user_name, identity_len)
			    != 0)
				sta->radius_das_match = 0;
			else
				count++;
		}

		if (count == 0) {
			FUNC5(MSG_DEBUG,
				   "RADIUS DAS: No matches remaining after User-Name check");
			return NULL;
		}
		FUNC5(MSG_DEBUG,
			   "RADIUS DAS: User-Name match");
	}

	if (num_attr == 0) {
		/*
		 * In theory, we could match all current associations, but it
		 * seems safer to just reject requests that do not include any
		 * session identification attributes.
		 */
		FUNC5(MSG_DEBUG,
			   "RADIUS DAS: No session identification attributes included");
		return NULL;
	}

	selected = NULL;
	for (sta = hapd->sta_list; sta; sta = sta->next) {
		if (sta->radius_das_match) {
			if (selected) {
				*multi = 1;
				return NULL;
			}
			selected = sta;
		}
	}

	return selected;
}