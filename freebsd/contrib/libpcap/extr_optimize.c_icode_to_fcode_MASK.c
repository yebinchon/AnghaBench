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
typedef  int u_int ;
struct icode {int dummy; } ;
struct bpf_insn {int dummy; } ;
struct block {int dummy; } ;
struct TYPE_3__ {struct bpf_insn* ftail; struct bpf_insn* fstart; } ;
typedef  TYPE_1__ conv_state_t ;
typedef  int /*<<< orphan*/  compiler_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,struct icode*,struct block*) ; 
 int FUNC2 (struct icode*,struct block*) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_insn*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct icode*) ; 

struct bpf_insn *
FUNC7(compiler_state_t *cstate, struct icode *ic,
    struct block *root, u_int *lenp)
{
	u_int n;
	struct bpf_insn *fp;
	conv_state_t conv_state;

	/*
	 * Loop doing convert_code_r() until no branches remain
	 * with too-large offsets.
	 */
	for (;;) {
	    FUNC6(ic);
	    n = *lenp = FUNC2(ic, root);

	    fp = (struct bpf_insn *)FUNC4(sizeof(*fp) * n);
	    if (fp == NULL)
		    FUNC0(cstate, "malloc");
	    FUNC5((char *)fp, 0, sizeof(*fp) * n);
	    conv_state.fstart = fp;
	    conv_state.ftail = fp + n;

	    FUNC6(ic);
	    if (FUNC1(cstate, &conv_state, ic, root))
		break;
	    FUNC3(fp);
	}

	return fp;
}