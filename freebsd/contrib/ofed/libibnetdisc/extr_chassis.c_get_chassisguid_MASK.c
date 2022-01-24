#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  info; } ;
typedef  TYPE_1__ ibnd_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  IB_NODE_SYSTEM_GUID_F ; 
 int /*<<< orphan*/  IB_NODE_VENDORID_F ; 
 scalar_t__ SS_VENDOR_ID ; 
 scalar_t__ TS_VENDOR_ID ; 
 scalar_t__ XS_VENDOR_ID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static uint64_t FUNC5(ibnd_node_t * node)
{
	uint32_t vendid = FUNC1(node->info, 0, IB_NODE_VENDORID_F);
	uint64_t sysimgguid =
	    FUNC2(node->info, 0, IB_NODE_SYSTEM_GUID_F);

	if (vendid == TS_VENDOR_ID || vendid == SS_VENDOR_ID)
		return FUNC3(sysimgguid);
	else if (vendid == XS_VENDOR_ID || FUNC0(sysimgguid))
		return FUNC4(node);
	else
		return sysimgguid;
}