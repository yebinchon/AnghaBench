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
struct ibmad_port {int /*<<< orphan*/  port_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ibmad_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct ibmad_port *port)
{
	FUNC1(port->port_id);
	FUNC0(port);
}