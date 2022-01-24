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
struct ipfw_flow_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipfw_flow_id*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(struct ipfw_flow_id *id)
{
	if (!FUNC0(id))
		FUNC1("BKT Prot ___Source IP/port____ "
		    "____Dest. IP/port____ "
		    "Tot_pkt/bytes Pkt/Byte Drp\n");
	else
		FUNC1("BKT ___Prot___ _flow-id_ "
		    "______________Source IPv6/port_______________ "
		    "_______________Dest. IPv6/port_______________ "
		    "Tot_pkt/bytes Pkt/Byte Drp\n");
}