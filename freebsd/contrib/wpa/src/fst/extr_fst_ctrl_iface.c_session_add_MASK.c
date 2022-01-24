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
struct fst_session {int dummy; } ;
struct fst_group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 struct fst_session* FUNC1 (struct fst_group*) ; 
 int /*<<< orphan*/  FUNC2 (struct fst_session*) ; 
 struct fst_group* FUNC3 (char const*) ; 
 int FUNC4 (char*,size_t,char*,...) ; 

__attribute__((used)) static int FUNC5(const char *group_id, char *buf, size_t buflen)
{
	struct fst_group *g;
	struct fst_session *s;

	g = FUNC3(group_id);
	if (!g) {
		FUNC0(MSG_WARNING, "CTRL: Cannot find group '%s'",
			   group_id);
		return FUNC4(buf, buflen, "FAIL\n");
	}

	s = FUNC1(g);
	if (!s) {
		FUNC0(MSG_ERROR,
			   "CTRL: Cannot create session for group '%s'",
			   group_id);
		return FUNC4(buf, buflen, "FAIL\n");
	}

	return FUNC4(buf, buflen, "%u\n", FUNC2(s));
}