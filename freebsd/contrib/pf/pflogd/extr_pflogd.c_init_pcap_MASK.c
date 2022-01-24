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
 int /*<<< orphan*/  BIOCLOCK ; 
 scalar_t__ DLT_PFLOG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  PCAP_TO_MS ; 
 int /*<<< orphan*/  cur_snaplen ; 
 int /*<<< orphan*/  errbuf ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * hpcap ; 
 int /*<<< orphan*/  interface ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  snaplen ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9(void)
{
	hpcap = FUNC5(interface, snaplen, 1, PCAP_TO_MS, errbuf);
	if (hpcap == NULL) {
		FUNC1(LOG_ERR, "Failed to initialize: %s", errbuf);
		return (-1);
	}

	if (FUNC3(hpcap) != DLT_PFLOG) {
		FUNC1(LOG_ERR, "Invalid datalink type");
		FUNC2(hpcap);
		hpcap = NULL;
		return (-1);
	}

	FUNC7();

	cur_snaplen = snaplen = FUNC6(hpcap);

	/* lock */
	if (FUNC0(FUNC4(hpcap), BIOCLOCK) < 0) {
		FUNC1(LOG_ERR, "BIOCLOCK: %s", FUNC8(errno));
		return (-1);
	}

	return (0);
}