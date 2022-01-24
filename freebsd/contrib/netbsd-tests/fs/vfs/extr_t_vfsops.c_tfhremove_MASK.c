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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ E2BIG ; 
 scalar_t__ EOPNOTSUPP ; 
 int /*<<< orphan*/  ESTALE ; 
 int /*<<< orphan*/  FNAME ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 int O_CREAT ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ errno ; 
 void* FUNC7 (size_t) ; 
 int FUNC8 (char const*) ; 
 int FUNC9 (int) ; 
 int FUNC10 (void*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,void*,size_t*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(const atf_tc_t *tc, const char *path)
{
	size_t fhsize;
	void *fhp;
	int fd;

	FUNC2(FUNC8(path));
	FUNC2(fd = FUNC12(FNAME, O_RDWR | O_CREAT, 0777));
	FUNC2(FUNC9(fd));

	fhsize = 0;
	if (FUNC11(FNAME, NULL, &fhsize) == -1) {
		if (errno == EOPNOTSUPP) {
			FUNC6("file handles not supported");
		} else if (errno != E2BIG) {
			FUNC5("getfh size");
		}
	}

	fhp = FUNC7(fhsize);
	FUNC2(FUNC11(FNAME, fhp, &fhsize));
	FUNC2(FUNC13(FNAME));

	if (FUNC1(tc))
		FUNC3("fhopen() for removed file succeeds "
		    "(PR kern/43745)");
	FUNC0(ESTALE, FUNC10(fhp, fhsize, O_RDONLY) == -1);
	FUNC4();

	FUNC2(FUNC8("/"));
}