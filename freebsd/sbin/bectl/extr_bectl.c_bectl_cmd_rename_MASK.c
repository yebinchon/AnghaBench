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
#define  BE_ERR_SUCCESS 128 
 int /*<<< orphan*/  be ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC2 (int) ; 

__attribute__((used)) static int
FUNC3(int argc, char *argv[])
{
	char *dest, *src;
	int err;

	if (argc < 3) {
		FUNC1(stderr, "bectl rename: missing argument\n");
		return (FUNC2(false));
	}

	if (argc > 3) {
		FUNC1(stderr, "bectl rename: too many arguments\n");
		return (FUNC2(false));
	}

	src = argv[1];
	dest = argv[2];

	err = FUNC0(be, src, dest);

	switch (err) {
	case BE_ERR_SUCCESS:
		break;
	default:
		FUNC1(stderr, "failed to rename bootenv %s to %s\n",
		    src, dest);
	}

	return (0);
}