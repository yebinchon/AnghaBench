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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,char* const*,char*) ; 
 int /*<<< orphan*/  optarg ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (char* const) ; 

__attribute__((used)) static void
FUNC4(int argc, char * const argv[], size_t *bufLength,
    int *includeNegativeScale, int *includeExabytes, int *verbose) {
	int ch;
	size_t temp;

	while ((ch = FUNC1(argc, argv, "nEh?vl:")) != -1) {
		switch (ch) {
			default:
				FUNC3(argv[0]);
				FUNC0(1);
				break;	/* UNREACHABLE */
			case 'h' :
			case '?' :
				FUNC3(argv[0]);
				FUNC0(0);
				break;	/* UNREACHABLE */
			case 'l' :
				FUNC2(optarg, "%zu", &temp);
				*bufLength = temp + 1;
				break;
			case 'n' :
				*includeNegativeScale = 1;
				break;
			case 'E' :
				*includeExabytes = 1;
				break;
			case 'v' :
				*verbose = 1;
				break;
		}
	}
}