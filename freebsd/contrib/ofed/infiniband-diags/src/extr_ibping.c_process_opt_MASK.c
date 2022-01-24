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
 int /*<<< orphan*/  AF_INET6 ; 
 void* count ; 
 int /*<<< orphan*/  dgid ; 
 int /*<<< orphan*/  flood ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 void* oui ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  server ; 
 void* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int with_grh ; 

__attribute__((used)) static int FUNC4(void *context, int ch, char *optarg)
{
	switch (ch) {
	case 'c':
		count = FUNC3(optarg, 0, 0);
		break;
	case 'f':
		flood++;
		break;
	case 'o':
		oui = FUNC3(optarg, 0, 0);
		break;
	case 'S':
		server++;
		break;
	case 25:
		if (!FUNC1(AF_INET6, optarg, &dgid)) {
			FUNC2("dgid format is wrong!\n");
			FUNC0();
			return 1;
		}
		with_grh = 1;
		break;
	default:
		return -1;
	}
	return 0;
}