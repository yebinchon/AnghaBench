#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sta_info {int /*<<< orphan*/  addr; struct eapol_state_machine* eapol_sm; } ;
struct radius_msg {int dummy; } ;
struct hostapd_data {int dummy; } ;
struct eapol_state_machine {size_t identity_len; int /*<<< orphan*/ * identity; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOSTAPD_LEVEL_DEBUG ; 
 int /*<<< orphan*/  HOSTAPD_MODULE_IEEE8021X ; 
 int /*<<< orphan*/  RADIUS_ATTR_USER_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct radius_msg*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct hostapd_data *hapd,
					   struct sta_info *sta,
					   struct radius_msg *msg)
{
	u8 *buf, *identity;
	size_t len;
	struct eapol_state_machine *sm = sta->eapol_sm;

	if (sm == NULL)
		return;

	if (FUNC3(msg, RADIUS_ATTR_USER_NAME, &buf, &len,
				    NULL) < 0)
		return;

	identity = (u8 *) FUNC0(buf, len);
	if (identity == NULL)
		return;

	FUNC1(hapd, sta->addr, HOSTAPD_MODULE_IEEE8021X,
		       HOSTAPD_LEVEL_DEBUG, "old identity '%s' updated with "
		       "User-Name from Access-Accept '%s'",
		       sm->identity ? (char *) sm->identity : "N/A",
		       (char *) identity);

	FUNC2(sm->identity);
	sm->identity = identity;
	sm->identity_len = len;
}