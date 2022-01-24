#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int num_of_counter_groups; int /*<<< orphan*/ * group_masks; } ;
typedef  TYPE_1__ is4_counter_group_info_t ;
typedef  int /*<<< orphan*/  ib_portid_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  IB_MAD_METHOD_GET ; 
 int /*<<< orphan*/  IB_MLX_IS4_COUNTER_GROUP_INFO ; 
 int /*<<< orphan*/  IB_MLX_VENDOR_CLASS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char**,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  srcport ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC5(ib_portid_t * portid, int port)
{
	char buf[1024];
	is4_counter_group_info_t *cg_info;
	int i, num_cg;

	/* Counter Group Info */
	FUNC2(&buf, 0, sizeof(buf));
	if (FUNC0(portid, srcport, IB_MLX_VENDOR_CLASS, IB_MAD_METHOD_GET,
		      IB_MLX_IS4_COUNTER_GROUP_INFO, port, buf)) {
		FUNC1(stderr,"counter group info query failure\n");
		return -1;
	}
	cg_info = (is4_counter_group_info_t *) & buf;
	num_cg = cg_info->num_of_counter_groups;
	FUNC4("counter_group_info:\n");
	FUNC4("%d counter groups\n", num_cg);
	for (i = 0; i < num_cg; i++)
		FUNC4("group%d mask %#x\n", i, FUNC3(cg_info->group_masks[i]));
	return 0;
}