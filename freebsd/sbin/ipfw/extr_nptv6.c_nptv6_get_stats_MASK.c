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
typedef  int /*<<< orphan*/  uint8_t ;
struct ipfw_nptv6_stats {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  opheader; int /*<<< orphan*/  ntlv; } ;
typedef  TYPE_1__ ipfw_obj_header ;
typedef  int /*<<< orphan*/  ipfw_obj_ctlv ;

/* Variables and functions */
 int /*<<< orphan*/  IP_FW_NPTV6_STATS ; 
 TYPE_1__* FUNC0 (int,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipfw_nptv6_stats*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(const char *name, uint8_t set, struct ipfw_nptv6_stats *stats)
{
	ipfw_obj_header *oh;
	ipfw_obj_ctlv *oc;
	size_t sz;

	sz = sizeof(*oh) + sizeof(*oc) + sizeof(*stats);
	oh = FUNC0(1, sz);
	FUNC4(&oh->ntlv, name, set);
	if (FUNC1(IP_FW_NPTV6_STATS, &oh->opheader, &sz) == 0) {
		oc = (ipfw_obj_ctlv *)(oh + 1);
		FUNC3(stats, oc + 1, sizeof(*stats));
		FUNC2(oh);
		return (0);
	}
	FUNC2(oh);
	return (-1);
}