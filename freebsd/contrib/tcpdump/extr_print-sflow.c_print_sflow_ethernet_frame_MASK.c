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
struct sflow_ethernet_frame_t {int /*<<< orphan*/  type; int /*<<< orphan*/  length; } ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sflow_ethernet_frame_t const) ; 

__attribute__((used)) static int
FUNC3(netdissect_options *ndo,
                           const u_char *pointer, u_int len)
{
    const struct sflow_ethernet_frame_t *sflow_ethernet_frame;

    if (len < sizeof(struct sflow_ethernet_frame_t))
	return 1;

    sflow_ethernet_frame = (const struct sflow_ethernet_frame_t *)pointer;
    FUNC2(*sflow_ethernet_frame);

    FUNC1((ndo, "\n\t      frame len %u, type %u",
	   FUNC0(sflow_ethernet_frame->length),
	   FUNC0(sflow_ethernet_frame->type)));

    return 0;

trunc:
    return 1;
}