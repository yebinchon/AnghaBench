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
typedef  long uint8_t ;
struct ib_user_mad_reg_req {int qpn; int mgmt_class; int mgmt_class_version; long rmpp_version; int id; int /*<<< orphan*/  method_mask; int /*<<< orphan*/  oui; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  IB_USER_MAD_REGISTER_AGENT ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int,int,int,int,long*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_user_mad_reg_req*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,long*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC6(int fd, int mgmt_class, uint8_t rmpp_version,
		      uint8_t oui[3], long method_mask[])
{
	struct ib_user_mad_reg_req req;

	FUNC1("fd %d mgmt_class %u rmpp_version %d oui 0x%x%x%x method_mask %p",
	      fd, mgmt_class, (int)rmpp_version, (int)oui[0], (int)oui[1],
	      (int)oui[2], method_mask);

	if (mgmt_class < 0x30 || mgmt_class > 0x4f) {
		FUNC0("mgmt class %d not in vendor range 2", mgmt_class);
		return -EINVAL;
	}

	req.qpn = 1;
	req.mgmt_class = mgmt_class;
	req.mgmt_class_version = 1;
	FUNC4(req.oui, oui, sizeof req.oui);
	req.rmpp_version = rmpp_version;

	if (method_mask)
		FUNC4(req.method_mask, method_mask, sizeof req.method_mask);
	else
		FUNC5(req.method_mask, 0, sizeof req.method_mask);

	FUNC2(&req, sizeof req);

	if (!FUNC3(fd, IB_USER_MAD_REGISTER_AGENT, (void *)&req)) {
		FUNC0
		    ("fd %d registered to use agent %d qp %d class 0x%x oui %p",
		     fd, req.id, req.qpn, req.mgmt_class, oui);
		return req.id;	/* return agentid */
	}

	FUNC0("fd %d registering qp %d class 0x%x version %d oui %p failed: %m",
	      fd, req.qpn, req.mgmt_class, req.mgmt_class_version, oui);
	return -EPERM;
}