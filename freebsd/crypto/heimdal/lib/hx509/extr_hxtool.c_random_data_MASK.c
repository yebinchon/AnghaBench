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
 int FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int) ; 
 int FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC7(void *opt, int argc, char **argv)
{
    void *ptr;
    int len, ret;

    len = FUNC6(argv[0], "byte");
    if (len <= 0) {
	FUNC2(stderr, "bad argument to random-data\n");
	return 1;
    }

    ptr = FUNC5(len);
    if (ptr == NULL) {
	FUNC2(stderr, "out of memory\n");
	return 1;
    }

    ret = FUNC0(ptr, len);
    if (ret != 1) {
	FUNC3(ptr);
	FUNC2(stderr, "did not get cryptographic strong random\n");
	return 1;
    }

    FUNC4(ptr, len, 1, stdout);
    FUNC1(stdout);

    FUNC3(ptr);

    return 0;
}