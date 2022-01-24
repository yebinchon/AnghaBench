#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_3__ {int port_id; int /*<<< orphan*/  class_agents; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int IB_SA_CLASS ; 
 int MAX_CLASS ; 
 TYPE_1__* ibmp ; 
 scalar_t__ FUNC1 (int,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (char*,int) ; 

void
FUNC5(char *dev_name, int dev_port, int *mgmt_classes, int num_classes)
{
	int fd;

	if (FUNC3() < 0)
		FUNC0("can't init UMAD library");

	if ((fd = FUNC4(dev_name, dev_port)) < 0)
		FUNC0("can't open UMAD port (%s:%d)",
		dev_name ? dev_name : "(nil)", dev_port);

	if (num_classes >= MAX_CLASS)
		FUNC0("too many classes %d requested", num_classes);

	ibmp->port_id = fd;
	FUNC2(ibmp->class_agents, 0xff, sizeof ibmp->class_agents);
	while (num_classes--) {
		uint8_t rmpp_version = 0;
		int mgmt = *mgmt_classes++;

		if (mgmt == IB_SA_CLASS)
			rmpp_version = 1;
		if (FUNC1(mgmt, rmpp_version, ibmp) < 0)
			FUNC0("client_register for mgmt class %d failed",
				mgmt);
	}
}