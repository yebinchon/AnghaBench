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
 scalar_t__ FUNC3 (int /*<<< orphan*/  const*) ; 
 int NWRK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RUMP_RFCFDG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int quittingtime ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char const*,int) ; 
 int /*<<< orphan*/  FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  w1 ; 
 int /*<<< orphan*/  w2 ; 
 int /*<<< orphan*/  wrkpid ; 

__attribute__((used)) static void
FUNC18(const atf_tc_t *tc, const char *mp)
{
	pthread_t pt1[NWRK], pt2[NWRK];
	int i;

	/*
	 * Sysvbfs supports only 8 inodes so this test would exhaust
	 * the inode table and creating files would fail with ENOSPC.
	 */
	if (FUNC2(tc))
		FUNC9("filesystem has not enough inodes");
	if (FUNC1(tc))
		FUNC9("rename not supported by file system");
	if (FUNC3(tc))
		FUNC6("PR kern/49046");

	FUNC5(FUNC13(RUMP_RFCFDG));
	FUNC4(wrkpid = FUNC16());

	FUNC4(FUNC15(mp));
	for (i = 0; i < NWRK; i++)
		FUNC11(&pt1[i], NULL, w1, NULL);

	for (i = 0; i < NWRK; i++)
		FUNC11(&pt2[i], NULL, w2, NULL);

	FUNC17(5);
	quittingtime = 1;

	for (i = 0; i < NWRK; i++)
		FUNC12(pt1[i], NULL);
	for (i = 0; i < NWRK; i++)
		FUNC12(pt2[i], NULL);
	FUNC4(FUNC15("/"));

	if (FUNC3(tc))
		FUNC7("race did not trigger this time");

	if (FUNC0(tc)) {
		FUNC6("PR kern/43626");
		/*
		 * XXX: race does not trigger every time at least
		 * on amd64/qemu.
		 */
		if (FUNC10(tc, mp, 0) != 0) {
			FUNC14(mp, 1);
			FUNC8("unmount failed");
		}
		FUNC7("race did not trigger this time");
	}
}