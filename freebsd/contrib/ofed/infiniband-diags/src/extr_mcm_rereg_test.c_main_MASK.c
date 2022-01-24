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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int qp; scalar_t__ qkey; } ;
typedef  TYPE_1__ ib_portid_t ;

/* Variables and functions */
 scalar_t__ IB_DEFAULT_QP1_QKEY ; 
 int /*<<< orphan*/  IB_SA_CLASS ; 
 int IB_SMI_CLASS ; 
 int IB_SMI_DIRECT_CLASS ; 
 int /*<<< orphan*/  TMO ; 
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  srcport ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 

int FUNC14(int argc, char **argv)
{
	char *guid_file = "port_guids.list";
	int mgmt_classes[2] = { IB_SMI_CLASS, IB_SMI_DIRECT_CLASS };
	ib_portid_t dport_id;
	int port, agent;
	uint8_t *umad, *mad;
	int len;

	if (argc > 1)
		guid_file = argv[1];

	srcport = FUNC3(NULL, 0, mgmt_classes, 2);
	if (!srcport)
		FUNC1("Failed to open port");

	FUNC6(NULL, 0, &dport_id);
	dport_id.qp = 1;
	if (!dport_id.qkey)
		dport_id.qkey = IB_DEFAULT_QP1_QKEY;

	len = FUNC12() + 256;
	umad = FUNC0(1, len);
	if (!umad) {
		FUNC1("cannot alloc mem for umad: %s\n", FUNC7(errno));
		return -1;
	}
	port = FUNC4(srcport);

	agent = FUNC11(port, IB_SA_CLASS, 2, 0, NULL);

	FUNC5(guid_file, port, agent, &dport_id, TMO);
	mad = FUNC10(umad);

	FUNC2(umad);
	FUNC13(port, agent);
	FUNC8(port);
	FUNC9();

	return 0;
}