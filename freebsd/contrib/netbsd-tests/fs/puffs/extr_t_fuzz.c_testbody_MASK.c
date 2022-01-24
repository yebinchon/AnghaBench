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
struct puffs_kargs {int pa_fd; } ;
typedef  int /*<<< orphan*/  pthread_t ;
typedef  int /*<<< orphan*/  kargs ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ITERATIONS ; 
 int /*<<< orphan*/  MNT_FORCE ; 
 int /*<<< orphan*/  MOUNT_PUFFS ; 
 int /*<<< orphan*/  dacv ; 
 int dafd ; 
 int /*<<< orphan*/  damtx ; 
 int /*<<< orphan*/  FUNC1 (int,struct puffs_kargs*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  respondthread ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (char*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct puffs_kargs*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (struct puffs_kargs*,int) ; 
 unsigned long FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int,struct puffs_kargs*) ; 

__attribute__((used)) static void
FUNC18(int nfix)
{
	pthread_t pt;
	struct puffs_kargs kargs;
	unsigned long seed;
	int i;

	seed = FUNC16(NULL);
	FUNC14(seed);
	FUNC2("test seeded RNG with %lu\n", seed);

	FUNC9();

	FUNC6(&damtx, NULL);
	FUNC3(&dacv, NULL);
	FUNC5(&pt, NULL, respondthread, NULL);

	FUNC0(FUNC10("/mnt", 0777) == 0);

	for (i = 0; i < ITERATIONS; i++) {
		FUNC15(&kargs, sizeof(kargs));
		FUNC1(nfix, &kargs);
		if (FUNC11(MOUNT_PUFFS, "/mnt", 0,
		    &kargs, sizeof(kargs)) == 0) {
			struct stat sb;

			FUNC7(&damtx);
			dafd = kargs.pa_fd;
			FUNC4(&dacv);
			FUNC8(&damtx);

			FUNC12("/mnt", &sb);
			FUNC13("/mnt", MNT_FORCE);
		}
		FUNC17(nfix, &kargs);

		FUNC7(&damtx);
		dafd = -1;
		FUNC8(&damtx);
	}
}