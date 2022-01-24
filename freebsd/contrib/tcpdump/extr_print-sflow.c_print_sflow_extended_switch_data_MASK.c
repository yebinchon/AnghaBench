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
struct sflow_extended_switch_data_t {int /*<<< orphan*/  dst_pri; int /*<<< orphan*/  dst_vlan; int /*<<< orphan*/  src_pri; int /*<<< orphan*/  src_vlan; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sflow_extended_switch_data_t const) ; 

__attribute__((used)) static int
FUNC3(netdissect_options *ndo,
                                 const u_char *pointer, u_int len)
{
    const struct sflow_extended_switch_data_t *sflow_extended_sw_data;

    if (len < sizeof(struct sflow_extended_switch_data_t))
	return 1;

    sflow_extended_sw_data = (const struct sflow_extended_switch_data_t *)pointer;
    FUNC2(*sflow_extended_sw_data);
    FUNC1((ndo, "\n\t      src vlan %u, src pri %u, dst vlan %u, dst pri %u",
	   FUNC0(sflow_extended_sw_data->src_vlan),
	   FUNC0(sflow_extended_sw_data->src_pri),
	   FUNC0(sflow_extended_sw_data->dst_vlan),
	   FUNC0(sflow_extended_sw_data->dst_pri)));

    return 0;

trunc:
    return 1;
}