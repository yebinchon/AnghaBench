#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int numports; TYPE_1__** ports; } ;
typedef  TYPE_2__ umad_ca_t ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_5__ {int /*<<< orphan*/  port_guid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*,TYPE_2__*) ; 

int FUNC6(const char *ca_name, __be64 *portguids, int max)
{
	umad_ca_t ca;
	int ports = 0, i;

	FUNC1("ca name %s max port guids %d", ca_name, max);
	if (!(ca_name = FUNC4(ca_name, NULL)))
		return -ENODEV;

	if (FUNC5(ca_name, &ca) < 0)
		return -1;

	if (portguids) {
		if (ca.numports + 1 > max) {
			FUNC3(&ca);
			return -ENOMEM;
		}

		for (i = 0; i <= ca.numports; i++)
			portguids[ports++] = ca.ports[i] ?
				ca.ports[i]->port_guid : FUNC2(0);
	}

	FUNC3(&ca);
	FUNC0("%s: %d ports", ca_name, ports);

	return ports;
}