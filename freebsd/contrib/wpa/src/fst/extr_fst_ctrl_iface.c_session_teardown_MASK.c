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
typedef  int /*<<< orphan*/  u32 ;
struct fst_session {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct fst_session* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct fst_session*) ; 
 int FUNC3 (char*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(const char *session_id, char *buf, size_t buflen)
{
	struct fst_session *s;
	u32 id;

	id = FUNC4(session_id, NULL, 0);

	s = FUNC1(id);
	if (!s) {
		FUNC0(MSG_WARNING, "CTRL: Cannot find session %u", id);
		return FUNC3(buf, buflen, "FAIL\n");
	}

	if (FUNC2(s)) {
		FUNC0(MSG_WARNING, "CTRL: Cannot tear down session %u",
			   id);
		return FUNC3(buf, buflen, "FAIL\n");
	}

	return FUNC3(buf, buflen, "OK\n");
}