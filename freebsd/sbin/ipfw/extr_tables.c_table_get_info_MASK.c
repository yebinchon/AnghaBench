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
typedef  int /*<<< orphan*/  tbuf ;
typedef  int /*<<< orphan*/  ipfw_xtable_info ;
struct TYPE_4__ {int /*<<< orphan*/  opheader; } ;
typedef  TYPE_1__ ipfw_obj_header ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  IP_FW_TABLE_XINFO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(ipfw_obj_header *oh, ipfw_xtable_info *i)
{
	char tbuf[sizeof(ipfw_obj_header) + sizeof(ipfw_xtable_info)];
	size_t sz;

	sz = sizeof(tbuf);
	FUNC2(tbuf, 0, sizeof(tbuf));
	FUNC1(tbuf, oh, sizeof(*oh));
	oh = (ipfw_obj_header *)tbuf;

	if (FUNC0(IP_FW_TABLE_XINFO, &oh->opheader, &sz) != 0)
		return (errno);

	if (sz < sizeof(tbuf))
		return (EINVAL);

	*i = *(ipfw_xtable_info *)(oh + 1);

	return (0);
}