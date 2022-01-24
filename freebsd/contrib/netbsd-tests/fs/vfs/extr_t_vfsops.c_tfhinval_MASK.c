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
 scalar_t__ E2BIG ; 
 scalar_t__ EOPNOTSUPP ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ errno ; 
 void* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (void*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (void*,size_t) ; 
 unsigned long FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(const atf_tc_t *tc, const char *path)
{
	size_t fhsize;
	void *fhp;
	unsigned long seed;
	int fd;

	FUNC9(seed = FUNC11(NULL));
	FUNC4("RNG seed %lu\n", seed);

	FUNC0(FUNC5(path));
	fhsize = 0;
	if (FUNC8(".", NULL, &fhsize) == -1) {
		if (errno == EOPNOTSUPP) {
			FUNC2("file handles not supported");
		} else if (errno != E2BIG) {
			FUNC1("getfh size");
		}
	}

	fhp = FUNC3(fhsize);
	FUNC10(fhp, fhsize);
	fd = FUNC7(fhp, fhsize, O_RDWR);
	if (fd != -1)
		FUNC6(fd);

	FUNC0(FUNC5("/"));
}