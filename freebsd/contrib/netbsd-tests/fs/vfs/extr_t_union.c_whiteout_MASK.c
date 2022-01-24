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
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  atf_tc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOTEMPTY ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  MNT_RDONLY ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  TDFILE ; 
 int /*<<< orphan*/  TDIR ; 
 int FUNC4 (int /*<<< orphan*/  const*,void*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/  const*,void**,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 int FUNC8 (char*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct stat*) ; 
 int FUNC12 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(const atf_tc_t *tc, const char *mp)
{
	char lower[MAXPATHLEN];
	struct stat sb;
	void *fsarg;

	/*
	 * XXX: use ffs here to make sure any screwups in rumpfs don't
	 * affect the test
	 */
	FUNC3(FUNC5(tc, &fsarg, "daimage", 1024*1024*5, NULL));
	FUNC3(FUNC4(tc, fsarg, "/lower", 0));

	/* create a file in the lower layer */
	FUNC3(FUNC8("/lower"));
	FUNC3(FUNC9(TDIR, 0777));
	FUNC3(FUNC9(TDFILE, 0777));
	FUNC3(FUNC8("/"));

	FUNC3(FUNC6(tc, "/lower", 0));
	FUNC3(FUNC4(tc, fsarg, "/lower", MNT_RDONLY));

	FUNC7(mp, lower);

	FUNC1();
	FUNC0(ENOTEMPTY, FUNC10(TDIR) == -1);
	FUNC3(FUNC10(TDFILE));
	FUNC3(FUNC10(TDIR));
	FUNC0(ENOENT, FUNC11(TDFILE, &sb) == -1);
	FUNC0(ENOENT, FUNC11(TDIR, &sb) == -1);

	FUNC3(FUNC9(TDIR, 0777));
	FUNC3(FUNC11(TDIR, &sb));
	FUNC0(ENOENT, FUNC11(TDFILE, &sb) == -1);
	FUNC2();

	FUNC3(FUNC12(mp, 0));
}