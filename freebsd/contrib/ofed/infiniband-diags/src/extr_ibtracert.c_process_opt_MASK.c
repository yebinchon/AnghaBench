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
 int dumplevel ; 
 int /*<<< orphan*/  force ; 
 int /*<<< orphan*/  mlid ; 
 int /*<<< orphan*/  multicast ; 
 int /*<<< orphan*/  node_name_map_file ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(void *context, int ch, char *optarg)
{
	switch (ch) {
	case 1:
		node_name_map_file = FUNC0(optarg);
		break;
	case 'm':
		multicast++;
		mlid = FUNC1(optarg, 0, 0);
		break;
	case 'f':
		force++;
		break;
	case 'n':
		dumplevel = 1;
		break;
	default:
		return -1;
	}
	return 0;
}