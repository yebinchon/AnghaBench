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
struct block {int dummy; } ;
typedef  int /*<<< orphan*/  compiler_state_t ;
typedef  int /*<<< orphan*/  bpf_int32 ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_B ; 
 int /*<<< orphan*/  OR_LINKPL ; 
#define  Q_AND 132 
#define  Q_DEFAULT 131 
#define  Q_DST 130 
#define  Q_OR 129 
#define  Q_SRC 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct block*,struct block*) ; 
 struct block* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct block* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct block*,struct block*) ; 
 struct block* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

struct block *
FUNC6(compiler_state_t *cstate, int port, int proto, int dir)
{
	struct block *b0, *b1, *tmp;

	/* ip proto 'proto' and not a fragment other than the first fragment */
	tmp = FUNC2(cstate, OR_LINKPL, 9, BPF_B, (bpf_int32)proto);
	b0 = FUNC3(cstate);
	FUNC1(tmp, b0);

	switch (dir) {
	case Q_SRC:
		b1 = FUNC5(cstate, 0, (bpf_int32)port);
		break;

	case Q_DST:
		b1 = FUNC5(cstate, 2, (bpf_int32)port);
		break;

	case Q_OR:
	case Q_DEFAULT:
		tmp = FUNC5(cstate, 0, (bpf_int32)port);
		b1 = FUNC5(cstate, 2, (bpf_int32)port);
		FUNC4(tmp, b1);
		break;

	case Q_AND:
		tmp = FUNC5(cstate, 0, (bpf_int32)port);
		b1 = FUNC5(cstate, 2, (bpf_int32)port);
		FUNC1(tmp, b1);
		break;

	default:
		FUNC0();
	}
	FUNC1(b0, b1);

	return b1;
}