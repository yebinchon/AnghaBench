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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int IB_MAD_SIZE ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (struct ibmad_port*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int FUNC5 (int /*<<< orphan*/ ,void*,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 

void *FUNC7(void *umad, int timeout, struct ibmad_port *srcport)
{
	void *mad = umad ? umad : FUNC3(1, FUNC6() + IB_MAD_SIZE);
	int agent;
	int length = IB_MAD_SIZE;

	if ((agent = FUNC5(srcport->port_id, mad, &length,
			       FUNC1(srcport, timeout))) < 0) {
		if (!umad)
			FUNC4(mad);
		FUNC0("recv failed: %s", FUNC2(errno));
		return 0;
	}

	return mad;
}