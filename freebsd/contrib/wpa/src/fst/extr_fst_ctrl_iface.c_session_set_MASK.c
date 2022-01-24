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
typedef  char* u32 ;
struct fst_session {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FST_CSS_PNAME_LLT ; 
 int /*<<< orphan*/  FST_CSS_PNAME_NEW_IFNAME ; 
 int /*<<< orphan*/  FST_CSS_PNAME_NEW_PEER_ADDR ; 
 int /*<<< orphan*/  FST_CSS_PNAME_OLD_IFNAME ; 
 int /*<<< orphan*/  FST_CSS_PNAME_OLD_PEER_ADDR ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 struct fst_session* FUNC1 (char*) ; 
 int FUNC2 (struct fst_session*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct fst_session*,char*) ; 
 int FUNC4 (struct fst_session*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,size_t,char*,...) ; 
 char* FUNC6 (char*,char) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ ,int) ; 
 char* FUNC8 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(const char *session_id, char *buf, size_t buflen)
{
	struct fst_session *s;
	char *p, *q;
	u32 id;
	int ret;

	id = FUNC8(session_id, &p, 0);

	s = FUNC1(id);
	if (!s) {
		FUNC0(MSG_WARNING, "CTRL: Cannot find session %u", id);
		return FUNC5(buf, buflen, "FAIL\n");
	}

	if (*p != ' ' || !(q = FUNC6(p + 1, '=')))
		return FUNC5(buf, buflen, "FAIL\n");
	p++;

	if (FUNC7(p, FST_CSS_PNAME_OLD_IFNAME, q - p) == 0) {
		ret = FUNC2(s, q + 1, TRUE);
	} else if (FUNC7(p, FST_CSS_PNAME_NEW_IFNAME, q - p) == 0) {
		ret = FUNC2(s, q + 1, FALSE);
	} else if (FUNC7(p, FST_CSS_PNAME_OLD_PEER_ADDR, q - p) == 0) {
		ret = FUNC4(s, q + 1, TRUE);
	} else if (FUNC7(p, FST_CSS_PNAME_NEW_PEER_ADDR, q - p) == 0) {
		ret = FUNC4(s, q + 1, FALSE);
	} else if (FUNC7(p, FST_CSS_PNAME_LLT, q - p) == 0) {
		ret = FUNC3(s, q + 1);
	} else {
		FUNC0(MSG_ERROR, "CTRL: Unknown parameter: %s", p);
		return FUNC5(buf, buflen, "FAIL\n");
	}

	return FUNC5(buf, buflen, "%s\n", ret ? "FAIL" : "OK");
}