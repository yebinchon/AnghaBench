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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  ib_portid_t ;

/* Variables and functions */
 int /*<<< orphan*/  IB_ATTR_PORT_INFO ; 
 int /*<<< orphan*/  IB_PORT_LID_F ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void const*) ; 

__attribute__((used)) static int FUNC3(ib_portid_t * portid, const void *srcport)
{
	uint8_t portinfo[64] = { 0 };
	uint16_t lid;

	if (!FUNC2(portinfo, portid, IB_ATTR_PORT_INFO, 0, 0, srcport))
		return -1;
	FUNC1(portinfo, IB_PORT_LID_F, &lid);

	FUNC0(portid, lid, 0, 0);

	return 0;
}