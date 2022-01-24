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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int IB_VENDOR_RANGE2_DATA_OFFS ; 
 int /*<<< orphan*/  IB_VENDOR_RANGE2_DATA_SIZE ; 
 int /*<<< orphan*/  host_and_domain ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  srcport ; 
 void* FUNC5 (void*) ; 
 scalar_t__ FUNC6 (void*) ; 

__attribute__((used)) static char *FUNC7(void)
{
	void *umad;
	void *mad;
	char *data;

	FUNC0("starting to serve...");

	while ((umad = FUNC2(0, -1, srcport))) {

		if (FUNC6(umad) == 0) {
			mad = FUNC5(umad);
			data = (char *)mad + IB_VENDOR_RANGE2_DATA_OFFS;

			FUNC4(data, host_and_domain, IB_VENDOR_RANGE2_DATA_SIZE);

			FUNC0("Pong: %s", data);

			if (FUNC3(umad, 0, 0, srcport) < 0)
				FUNC0("respond failed");

		}
		FUNC1(umad);
	}

	FUNC0("server out");
	return 0;
}