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
typedef  int /*<<< orphan*/  u32 ;
struct fst_session {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FST_CS_PVAL_RESPONSE_ACCEPT ; 
 int /*<<< orphan*/  FST_CS_PVAL_RESPONSE_REJECT ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  WLAN_STATUS_PENDING_ADMITTING_FST_SESSION ; 
 int /*<<< orphan*/  WLAN_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 struct fst_session* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct fst_session*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(const char *session_id, char *buf, size_t buflen)
{
	struct fst_session *s;
	char *p;
	u32 id;
	u8 status_code;

	id = FUNC5(session_id, &p, 0);

	s = FUNC1(id);
	if (!s) {
		FUNC0(MSG_WARNING, "CTRL: Cannot find session %u", id);
		return FUNC3(buf, buflen, "FAIL\n");
	}

	if (*p != ' ')
		return FUNC3(buf, buflen, "FAIL\n");
	p++;

	if (!FUNC4(p, FST_CS_PVAL_RESPONSE_ACCEPT)) {
		status_code = WLAN_STATUS_SUCCESS;
	} else if (!FUNC4(p, FST_CS_PVAL_RESPONSE_REJECT)) {
		status_code = WLAN_STATUS_PENDING_ADMITTING_FST_SESSION;
	} else {
		FUNC0(MSG_WARNING,
			   "CTRL: session %u: unknown response status: %s",
			   id, p);
		return FUNC3(buf, buflen, "FAIL\n");
	}

	if (FUNC2(s, status_code)) {
		FUNC0(MSG_WARNING, "CTRL: Cannot respond to session %u",
			   id);
		return FUNC3(buf, buflen, "FAIL\n");
	}

	FUNC0(MSG_INFO, "CTRL: session %u responded", id);

	return FUNC3(buf, buflen, "OK\n");
}