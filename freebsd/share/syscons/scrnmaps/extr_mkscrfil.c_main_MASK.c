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
typedef  int /*<<< orphan*/  scrmap_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  scrmap ; 
 int /*<<< orphan*/  stderr ; 

int FUNC5(int argc, char **argv)
{
	FILE *fd;

	if (argc == 2) {
		if ((fd = FUNC1(argv[1], "w")) == NULL) {
			FUNC4(argv[1]);
			return 1;
		}
		FUNC3(&scrmap, sizeof(scrmap_t), 1, fd);
		FUNC0(fd);
		return 0;
	}
	else {
		FUNC2(stderr, "usage: %s <mapfile>\n", argv[0]);
		return 1;
	}
}