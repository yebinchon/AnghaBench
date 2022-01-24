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
typedef  int /*<<< orphan*/  fhandle_t ;

/* Variables and functions */
 scalar_t__ E2BIG ; 
 int EXIT_FAILURE ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int FUNC2 (char*,void*,...) ; 
 void* FUNC3 (size_t) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,void*,size_t) ; 

int
FUNC6(int argc, char **argv)
{
	int error;
	void *fh;
	size_t fh_size;

	if (argc < 2)
		return EXIT_FAILURE;

#ifdef __FreeBSD__
	fh_size = sizeof(fhandle_t);
#else
	fh_size = 0;
#endif

	fh = NULL;
	for (;;) {
		if (fh_size) {
			fh = FUNC3(fh_size);
			if (fh == NULL) {
				FUNC0(stderr, "out of memory");
				return EXIT_FAILURE;
			}
		}
		/*
		 * The kernel provides the necessary size in fh_size -
		 * but it may change if someone moves things around,
		 * so retry untill we have enough memory.
		 */
#ifdef __FreeBSD__
		error = getfh(argv[1], fh);
#else
		error = FUNC2(argv[1], fh, &fh_size);
#endif
		if (error == 0) {
			break;
		} else {
			if (fh != NULL)
				FUNC1(fh);
			if (errno != E2BIG) {
				FUNC4("getfh");
				return EXIT_FAILURE;
			}
		}
	}

	error = FUNC5(STDOUT_FILENO, fh, fh_size);
	if (error == -1) {
		FUNC4("write");
		return EXIT_FAILURE;
	}
	FUNC1(fh);

	return 0;
}