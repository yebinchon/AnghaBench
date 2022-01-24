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
typedef  int /*<<< orphan*/  pb ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int ENOENT ; 
 int ESTALE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  USES_DIRS ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char const*,char*) ; 
 int FUNC6 (char*) ; 
 int FUNC7 (char*,int) ; 
 int FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9(const atf_tc_t *tc, const char *mp)
{
	char pb[MAXPATHLEN];
	int xerrno;

	USES_DIRS;

	FUNC1();
	FUNC4(FUNC7("test", 0777));
	FUNC4(FUNC6("test"));

	FUNC4(FUNC7("subtest", 0777));
	FUNC4(FUNC6("subtest"));

	FUNC5(pb, sizeof(pb), mp, "test/subtest");
	FUNC4(FUNC8(pb));
	FUNC5(pb, sizeof(pb), mp, "test");
	FUNC4(FUNC8(pb));

	if (FUNC3(tc))
		xerrno = ESTALE;
	else
		xerrno = ENOENT;
	FUNC0(xerrno, FUNC6("..") == -1);
	FUNC2();
}