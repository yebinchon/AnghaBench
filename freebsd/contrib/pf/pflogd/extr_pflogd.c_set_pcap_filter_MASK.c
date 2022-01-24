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
struct bpf_program {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  PCAP_OPT_FIL ; 
 int /*<<< orphan*/  filter ; 
 int /*<<< orphan*/  hpcap ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct bpf_program*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_program*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct bpf_program*) ; 

void
FUNC5(void)
{
	struct bpf_program bprog;

	if (FUNC1(hpcap, &bprog, filter, PCAP_OPT_FIL, 0) < 0)
		FUNC0(LOG_WARNING, "%s", FUNC3(hpcap));
	else {
		if (FUNC4(hpcap, &bprog) < 0)
			FUNC0(LOG_WARNING, "%s", FUNC3(hpcap));
		FUNC2(&bprog);
	}
}