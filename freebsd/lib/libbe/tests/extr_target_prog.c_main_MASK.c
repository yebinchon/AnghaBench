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
typedef  int /*<<< orphan*/  libbe_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

int FUNC4(int argc, char *argv[]) {

        libbe_handle_t *lbh;

	if (argc != 5)
		return -1;

        if ((lbh = FUNC2(argv[1])) == NULL)
                return -1;

	FUNC3(lbh, true);

	return (FUNC1(lbh, argv[2], argv[3], FUNC0(argv[4])));
}