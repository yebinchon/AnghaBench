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
struct sflow_expanded_flow_raw_t {int /*<<< orphan*/  header_size; int /*<<< orphan*/  stripped_bytes; int /*<<< orphan*/  length; int /*<<< orphan*/  protocol; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sflow_expanded_flow_raw_t const) ; 
 int /*<<< orphan*/  sflow_flow_raw_protocol_values ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(netdissect_options *ndo,
                       const u_char *pointer, u_int len)
{
    const struct sflow_expanded_flow_raw_t *sflow_flow_raw;

    if (len < sizeof(struct sflow_expanded_flow_raw_t))
	return 1;

    sflow_flow_raw = (const struct sflow_expanded_flow_raw_t *)pointer;
    FUNC2(*sflow_flow_raw);
    FUNC1((ndo, "\n\t      protocol %s (%u), length %u, stripped bytes %u, header_size %u",
	   FUNC3(sflow_flow_raw_protocol_values,"Unknown",FUNC0(sflow_flow_raw->protocol)),
	   FUNC0(sflow_flow_raw->protocol),
	   FUNC0(sflow_flow_raw->length),
	   FUNC0(sflow_flow_raw->stripped_bytes),
	   FUNC0(sflow_flow_raw->header_size)));

    /* QUESTION - should we attempt to print the raw header itself?
       assuming of course there is wnough data present to do so... */

    return 0;

trunc:
    return 1;
}