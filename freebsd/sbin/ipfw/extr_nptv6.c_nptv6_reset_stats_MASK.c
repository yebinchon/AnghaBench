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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  oh ;
struct TYPE_3__ {int /*<<< orphan*/  opheader; int /*<<< orphan*/  ntlv; } ;
typedef  TYPE_1__ ipfw_obj_header ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  IP_FW_NPTV6_RESET_STATS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(const char *name, uint8_t set)
{
	ipfw_obj_header oh;

	FUNC2(&oh, 0, sizeof(oh));
	FUNC3(&oh.ntlv, name, set);
	if (FUNC0(IP_FW_NPTV6_RESET_STATS, &oh.opheader, sizeof(oh)) != 0)
		FUNC1(EX_OSERR, "failed to reset stats for instance %s", name);
}