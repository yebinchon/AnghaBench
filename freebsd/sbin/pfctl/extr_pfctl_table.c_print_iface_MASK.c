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
typedef  int /*<<< orphan*/  time_t ;
struct pfi_kif {char* pfik_name; int pfik_flags; int pfik_rulerefs; scalar_t__*** pfik_bytes; scalar_t__*** pfik_packets; int /*<<< orphan*/  pfik_tzero; } ;

/* Variables and functions */
 int PFI_IFLAG_SKIP ; 
 int PF_OPT_VERBOSE ; 
 int PF_OPT_VERBOSE2 ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 char**** istats_text ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void
FUNC2(struct pfi_kif *p, int opts)
{
	time_t	tzero = p->pfik_tzero;
	int	i, af, dir, act;

	FUNC1("%s", p->pfik_name);
	if (opts & PF_OPT_VERBOSE) {
		if (p->pfik_flags & PFI_IFLAG_SKIP)
			FUNC1(" (skip)");
	}
	FUNC1("\n");

	if (!(opts & PF_OPT_VERBOSE2))
		return;
	FUNC1("\tCleared:     %s", FUNC0(&tzero));
	FUNC1("\tReferences:  %-18d\n", p->pfik_rulerefs);
	for (i = 0; i < 8; i++) {
		af = (i>>2) & 1;
		dir = (i>>1) &1;
		act = i & 1;
		FUNC1("\t%-12s [ Packets: %-18llu Bytes: %-18llu ]\n",
		    istats_text[af][dir][act],
		    (unsigned long long)p->pfik_packets[af][dir][act],
		    (unsigned long long)p->pfik_bytes[af][dir][act]);
	}
}