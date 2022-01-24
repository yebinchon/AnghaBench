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
struct TYPE_2__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  ifname; int /*<<< orphan*/  connected; } ;
union fst_event_extra {TYPE_1__ peer_state; } ;
typedef  int /*<<< orphan*/  u8 ;
struct fst_iface {int dummy; } ;
typedef  int /*<<< orphan*/  Boolean ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  EVENT_PEER_STATE_CHANGED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fst_iface*,int /*<<< orphan*/ *,union fst_event_extra*) ; 
 int /*<<< orphan*/  FUNC1 (struct fst_iface*) ; 
 int /*<<< orphan*/  on_event ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct fst_iface *iface,
						    Boolean connected,
						    const u8 *peer_addr)
{
	union fst_event_extra extra;

	extra.peer_state.connected = connected;
	FUNC3(extra.peer_state.ifname, FUNC1(iface),
		   sizeof(extra.peer_state.ifname));
	FUNC2(extra.peer_state.addr, peer_addr, ETH_ALEN);

	FUNC0(on_event, EVENT_PEER_STATE_CHANGED,
			      iface, NULL, &extra);
}