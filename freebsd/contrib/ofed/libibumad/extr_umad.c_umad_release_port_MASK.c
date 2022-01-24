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
struct TYPE_4__ {int /*<<< orphan*/  portnum; int /*<<< orphan*/  ca_name; } ;
typedef  TYPE_1__ umad_port_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 

int FUNC3(umad_port_t * port)
{
	int r;

	FUNC1("port %s:%d", port->ca_name, port->portnum);
	if (!port)
		return -ENODEV;

	if ((r = FUNC2(port)) < 0)
		return r;

	FUNC0("releasing %s:%d", port->ca_name, port->portnum);
	return 0;
}