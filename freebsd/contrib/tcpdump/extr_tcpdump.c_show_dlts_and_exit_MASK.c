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
typedef  int /*<<< orphan*/  pcap_t ;

/* Variables and functions */
 scalar_t__ Iflag ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 char* FUNC4 (int) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int**) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ supports_monitor_mode ; 

__attribute__((used)) static void
FUNC9(pcap_t *pc, const char *device)
{
	int n_dlts, i;
	int *dlts = 0;
	const char *dlt_name;

	n_dlts = FUNC8(pc, &dlts);
	if (n_dlts < 0)
		FUNC0("%s", FUNC7(pc));
	else if (n_dlts == 0 || !dlts)
		FUNC0("No data link types.");

	/*
	 * If the interface is known to support monitor mode, indicate
	 * whether these are the data link types available when not in
	 * monitor mode, if -I wasn't specified, or when in monitor mode,
	 * when -I was specified (the link-layer types available in
	 * monitor mode might be different from the ones available when
	 * not in monitor mode).
	 */
	if (supports_monitor_mode)
		(void) FUNC2(stderr, "Data link types for %s %s (use option -y to set):\n",
		    device,
		    Iflag ? "when in monitor mode" : "when not in monitor mode");
	else
		(void) FUNC2(stderr, "Data link types for %s (use option -y to set):\n",
		    device);

	for (i = 0; i < n_dlts; i++) {
		dlt_name = FUNC5(dlts[i]);
		if (dlt_name != NULL) {
			(void) FUNC2(stderr, "  %s (%s)", dlt_name,
			    FUNC4(dlts[i]));

			/*
			 * OK, does tcpdump handle that type?
			 */
			if (!FUNC3(dlts[i]))
				(void) FUNC2(stderr, " (printing not supported)");
			FUNC2(stderr, "\n");
		} else {
			(void) FUNC2(stderr, "  DLT %d (printing not supported)\n",
			    dlts[i]);
		}
	}
#ifdef HAVE_PCAP_FREE_DATALINKS
	pcap_free_datalinks(dlts);
#endif
	FUNC1(0);
}