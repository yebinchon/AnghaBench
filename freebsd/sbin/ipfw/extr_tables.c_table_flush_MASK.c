#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  opheader; } ;
typedef  TYPE_1__ ipfw_obj_header ;

/* Variables and functions */
 int /*<<< orphan*/  IP_FW_TABLE_XFLUSH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC1(ipfw_obj_header *oh)
{

	if (FUNC0(IP_FW_TABLE_XFLUSH, &oh->opheader, sizeof(*oh)) != 0)
		return (-1);

	return (0);
}