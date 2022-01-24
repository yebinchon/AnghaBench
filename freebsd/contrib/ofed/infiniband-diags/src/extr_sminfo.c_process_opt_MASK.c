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
 void* act ; 
 void* prio ; 
 void* state ; 
 void* FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(void *context, int ch, char *optarg)
{
	switch (ch) {
	case 'a':
		act = FUNC0(optarg, 0, 0);
		break;
	case 's':
		state = FUNC0(optarg, 0, 0);
		break;
	case 'p':
		prio = FUNC0(optarg, 0, 0);
		break;
	default:
		return -1;
	}
	return 0;
}