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
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct sflow_ethernet_counter_t {int /*<<< orphan*/  symbol_errors; int /*<<< orphan*/  mac_receive_errors; int /*<<< orphan*/  frame_too_longs; int /*<<< orphan*/  carrier_sense_errors; int /*<<< orphan*/  mac_transmit_errors; int /*<<< orphan*/  excessive_collisions; int /*<<< orphan*/  late_collisions; int /*<<< orphan*/  deferred_transmissions; int /*<<< orphan*/  test_errors; int /*<<< orphan*/  multiple_collision_frames; int /*<<< orphan*/  single_collision_frames; int /*<<< orphan*/  fcserrors; int /*<<< orphan*/  alignerrors; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sflow_ethernet_counter_t const) ; 

__attribute__((used)) static int
FUNC3(netdissect_options *ndo,
                             const u_char *pointer, u_int len)
{
    const struct sflow_ethernet_counter_t *sflow_eth_counter;

    if (len < sizeof(struct sflow_ethernet_counter_t))
	return 1;

    sflow_eth_counter = (const struct sflow_ethernet_counter_t *)pointer;
    FUNC2(*sflow_eth_counter);
    FUNC1((ndo, "\n\t      align errors %u, fcs errors %u, single collision %u, multiple collision %u, test error %u",
	   FUNC0(sflow_eth_counter->alignerrors),
	   FUNC0(sflow_eth_counter->fcserrors),
	   FUNC0(sflow_eth_counter->single_collision_frames),
	   FUNC0(sflow_eth_counter->multiple_collision_frames),
	   FUNC0(sflow_eth_counter->test_errors)));
    FUNC1((ndo, "\n\t      deferred %u, late collision %u, excessive collision %u, mac trans error %u",
	   FUNC0(sflow_eth_counter->deferred_transmissions),
	   FUNC0(sflow_eth_counter->late_collisions),
	   FUNC0(sflow_eth_counter->excessive_collisions),
	   FUNC0(sflow_eth_counter->mac_transmit_errors)));
    FUNC1((ndo, "\n\t      carrier error %u, frames too long %u, mac receive errors %u, symbol errors %u",
	   FUNC0(sflow_eth_counter->carrier_sense_errors),
	   FUNC0(sflow_eth_counter->frame_too_longs),
	   FUNC0(sflow_eth_counter->mac_receive_errors),
	   FUNC0(sflow_eth_counter->symbol_errors)));

    return 0;

trunc:
    return 1;
}