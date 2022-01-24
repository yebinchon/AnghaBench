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
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  USES_SYMLINKS ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void
FUNC10(const atf_tc_t *tc, const char *mp, size_t len)
{
	char *buf;
	int r;

	USES_SYMLINKS;

	FUNC3(FUNC7(mp), "%s", mp);

	buf = FUNC5(len + 1);
	FUNC0(buf);
	FUNC6(buf, 'a', len);
	buf[len] = '\0';
	r = FUNC8(buf, "afile");
	if (r == -1) {
		FUNC1(ENAMETOOLONG, r);
	} else {
		FUNC2(FUNC9("afile"));
	}
	FUNC4(buf);

	FUNC2(FUNC7("/"));
}