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
struct TYPE_4__ {size_t node_type; int numports; char* ca_name; int /*<<< orphan*/ * ports; } ;
typedef  TYPE_1__ umad_ca_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,int,int) ; 
 unsigned int IB_NODE_MAX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 char** node_type_str ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 int FUNC4 (char*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(char *ca_name, int portnum, int no_ports)
{
	umad_ca_t ca;
	int r;

	if ((r = FUNC4(ca_name, &ca)) < 0)
		return r;

	if (!ca.node_type)
		return 0;

	if (!no_ports && portnum >= 0) {
		if (portnum > ca.numports || !ca.ports[portnum]) {
			FUNC0("%s: '%s' has no port number %d - max (%d)",
			       ((unsigned)ca.node_type <=
				IB_NODE_MAX ? node_type_str[ca.node_type] :
				"???"), ca_name, portnum, ca.numports);
			return -1;
		}
		FUNC3("%s: '%s'\n",
		       ((unsigned)ca.node_type <=
			IB_NODE_MAX ? node_type_str[ca.node_type] : "???"),
		       ca.ca_name);
		FUNC2(ca.ports[portnum], 1);
		return 0;
	}

	/* print ca header */
	FUNC1(&ca);

	if (no_ports)
		return 0;

	for (portnum = 0; portnum <= ca.numports; portnum++)
		FUNC2(ca.ports[portnum], 0);

	return 0;
}