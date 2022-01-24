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
struct pkt {int /*<<< orphan*/  xmt; int /*<<< orphan*/  li_vn_mode; } ;
struct TYPE_3__ {int l_ui; int l_uf; } ;
typedef  TYPE_1__ l_fp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INPUT_DIR ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  LEAP_NOWARNING ; 
 int /*<<< orphan*/  LEN_PKT_NOMAC ; 
 int /*<<< orphan*/  MODE_SERVER ; 
 int /*<<< orphan*/  NTP_VERSION ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pkt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  outputFile ; 
 int /*<<< orphan*/  FUNC6 (struct pkt*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7(void) {
	char * filename = "debug-output-pkt";
	FUNC3(filename);

	struct pkt testpkt;
	FUNC5(&testpkt, 0, sizeof(struct pkt));
	testpkt.li_vn_mode = FUNC4(LEAP_NOWARNING,
					    NTP_VERSION,
					    MODE_SERVER);

	l_fp test;
	test.l_ui = 8;
	test.l_uf = 2147483647; // Lots of ones.
	FUNC2(&test, &testpkt.xmt);

	FUNC6(&testpkt, LEN_PKT_NOMAC, outputFile);

	FUNC1(FUNC0("debug-input-pkt", INPUT_DIR), filename);
}