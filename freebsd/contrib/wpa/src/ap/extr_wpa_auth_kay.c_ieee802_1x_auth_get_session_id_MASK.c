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
struct sta_info {int /*<<< orphan*/  eapol_sm; } ;
struct hostapd_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct hostapd_data *hapd,
					  struct sta_info *sta, u8 *sid,
					  size_t *len)
{
	const u8 *session_id;
	size_t id_len, need_len;

	session_id = FUNC0(sta->eapol_sm, &id_len);
	if (!session_id) {
		FUNC2(MSG_DEBUG,
			   "MACsec: Failed to get SessionID from EAPOL state machines");
		return -1;
	}

	need_len = 1 + 2 * 32 /* random size */;
	if (need_len > id_len) {
		FUNC2(MSG_DEBUG, "EAP Session-Id not long enough");
		return -1;
	}

	FUNC1(sid, session_id, need_len);
	*len = need_len;

	return 0;
}