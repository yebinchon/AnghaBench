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
typedef  int uint8_t ;
struct ibmad_port {int port_id; int portnum; struct ibmad_port* class_agents; int /*<<< orphan*/  ca_name; } ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ EIO ; 
 scalar_t__ ENODEV ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int IB_SA_CLASS ; 
 int MAX_CLASS ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (struct ibmad_port*) ; 
 scalar_t__ FUNC2 (int,int,struct ibmad_port*) ; 
 struct ibmad_port* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ibmad_port*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 () ; 
 int FUNC8 (char*,int) ; 

struct ibmad_port *FUNC9(char *dev_name, int dev_port,
				     int *mgmt_classes, int num_classes)
{
	struct ibmad_port *p;
	int port_id;

	if (num_classes >= MAX_CLASS) {
		FUNC0("too many classes %d requested", num_classes);
		errno = EINVAL;
		return NULL;
	}

	if (FUNC7() < 0) {
		FUNC0("can't init UMAD library");
		errno = ENODEV;
		return NULL;
	}

	p = FUNC3(sizeof(*p));
	if (!p) {
		errno = ENOMEM;
		return NULL;
	}
	FUNC4(p, 0, sizeof(*p));

	if ((port_id = FUNC8(dev_name, dev_port)) < 0) {
		FUNC0("can't open UMAD port (%s:%d)", dev_name, dev_port);
		if (!errno)
			errno = EIO;
		FUNC1(p);
		return NULL;
	}

	p->port_id = port_id;
	if (dev_name)
		FUNC5(p->ca_name, dev_name, sizeof p->ca_name - 1);
	p->portnum = dev_port;

	FUNC4(p->class_agents, 0xff, sizeof p->class_agents);
	while (num_classes--) {
		uint8_t rmpp_version = 0;
		int mgmt = *mgmt_classes++;

		if (mgmt == IB_SA_CLASS)
			rmpp_version = 1;
		if (mgmt < 0 || mgmt >= MAX_CLASS ||
		    FUNC2(mgmt, rmpp_version, p) < 0) {
			FUNC0("client_register for mgmt %d failed", mgmt);
			if (!errno)
				errno = EINVAL;
			FUNC6(port_id);
			FUNC1(p);
			return NULL;
		}
	}

	return p;
}