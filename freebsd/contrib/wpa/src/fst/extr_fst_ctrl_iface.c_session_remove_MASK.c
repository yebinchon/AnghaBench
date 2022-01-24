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
struct fst_group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (struct fst_group*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fst_session*) ; 
 struct fst_session* FUNC3 (int /*<<< orphan*/ ) ; 
 struct fst_group* FUNC4 (struct fst_session*) ; 
 int /*<<< orphan*/  FUNC5 (struct fst_session*) ; 
 int FUNC6 (char*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(const char *session_id, char *buf, size_t buflen)
{
	struct fst_session *s;
	struct fst_group *g;
	u32 id;

	id = FUNC7(session_id, NULL, 0);

	s = FUNC3(id);
	if (!s) {
		FUNC1(MSG_WARNING, "CTRL: Cannot find session %u", id);
		return FUNC6(buf, buflen, "FAIL\n");
	}

	g = FUNC4(s);
	FUNC5(s);
	FUNC2(s);
	FUNC0(g);

	return FUNC6(buf, buflen, "OK\n");
}