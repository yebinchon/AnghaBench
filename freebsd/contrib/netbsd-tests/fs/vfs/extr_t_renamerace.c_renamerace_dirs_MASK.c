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
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RUMP_RFCFDG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int quittingtime ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  w1_dirs ; 
 int /*<<< orphan*/  w2 ; 
 int /*<<< orphan*/  wrkpid ; 

__attribute__((used)) static void
FUNC14(const atf_tc_t *tc, const char *mp)
{
	pthread_t pt1, pt2;

	if (FUNC2(tc))
		FUNC7("directories not supported by file system");

	if (FUNC1(tc))
		FUNC7("rename not supported by file system");

	/* XXX: msdosfs also sometimes hangs */
	if (FUNC0(tc))
		FUNC6(-1, "PR kern/43626");

	FUNC4(FUNC10(RUMP_RFCFDG));
	FUNC3(wrkpid = FUNC12());

	FUNC3(FUNC11(mp));
	FUNC8(&pt1, NULL, w1_dirs, NULL);
	FUNC8(&pt2, NULL, w2, NULL);

	FUNC13(5);
	quittingtime = 1;

	FUNC9(pt1, NULL);
	FUNC9(pt2, NULL);
	FUNC3(FUNC11("/"));

	/*
	 * Doesn't always trigger when run on a slow backend
	 * (i.e. not on tmpfs/mfs).  So do the usual kludge.
	 */
	if (FUNC0(tc))
		FUNC5();
}