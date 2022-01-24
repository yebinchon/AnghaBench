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
struct bpf_program {int bf_len; struct bpf_insn* bf_insns; } ;
struct bpf_insn {int code; int jt; int jf; int k; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bpf_insn*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(const struct bpf_program *p, int option)
{
	struct bpf_insn *insn;
	int i;
	int n = p->bf_len;

	insn = p->bf_insns;
	if (option > 2) {
		FUNC1("%d\n", n);
		for (i = 0; i < n; ++insn, ++i) {
			FUNC1("%u %u %u %u\n", insn->code,
			       insn->jt, insn->jf, insn->k);
		}
		return ;
	}
	if (option > 1) {
		for (i = 0; i < n; ++insn, ++i)
			FUNC1("{ 0x%x, %d, %d, 0x%08x },\n",
			       insn->code, insn->jt, insn->jf, insn->k);
		return;
	}
	for (i = 0; i < n; ++insn, ++i) {
#ifdef BDEBUG
		extern int bids[];
		printf(bids[i] > 0 ? "[%02d]" : " -- ", bids[i] - 1);
#endif
		FUNC2(FUNC0(insn, i));
	}
}