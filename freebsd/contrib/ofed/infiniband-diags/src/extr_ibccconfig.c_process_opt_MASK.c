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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  cckey ; 
 int /*<<< orphan*/  dgid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int with_grh ; 

__attribute__((used)) static int FUNC4(void *context, int ch, char *optarg)
{
	switch (ch) {
	case 'c':
		cckey = (uint64_t) FUNC3(optarg, 0, 0);
		break;
	case 25:
		if (!FUNC2(AF_INET6, optarg, &dgid)) {
			FUNC0(stderr, "dgid format is wrong!\n");
			FUNC1();
			return 1;
		}
		with_grh = 1;
		break;
	default:
		return -1;
	}
	return 0;
}