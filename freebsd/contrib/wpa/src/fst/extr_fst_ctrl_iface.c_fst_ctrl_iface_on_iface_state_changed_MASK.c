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
struct TYPE_2__ {int /*<<< orphan*/  group_id; int /*<<< orphan*/  ifname; int /*<<< orphan*/  attached; } ;
union fst_event_extra {TYPE_1__ iface_state; } ;
struct fst_iface {int dummy; } ;
typedef  int /*<<< orphan*/  extra ;
typedef  int /*<<< orphan*/  Boolean ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_FST_IFACE_STATE_CHANGED ; 
 int /*<<< orphan*/  FST_INVALID_SESSION_ID ; 
 int /*<<< orphan*/  FUNC0 (struct fst_iface*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union fst_event_extra*) ; 
 int /*<<< orphan*/  FUNC1 (struct fst_iface*) ; 
 int /*<<< orphan*/  FUNC2 (struct fst_iface*) ; 
 int /*<<< orphan*/  FUNC3 (union fst_event_extra*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct fst_iface *i,
						  Boolean attached)
{
	union fst_event_extra extra;

	FUNC3(&extra, 0, sizeof(extra));
	extra.iface_state.attached = attached;
	FUNC4(extra.iface_state.ifname, FUNC2(i),
		   sizeof(extra.iface_state.ifname));
	FUNC4(extra.iface_state.group_id, FUNC1(i),
		   sizeof(extra.iface_state.group_id));

	FUNC0(i, FST_INVALID_SESSION_ID,
			      EVENT_FST_IFACE_STATE_CHANGED, &extra);
}