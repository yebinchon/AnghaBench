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
typedef  int u_short ;
typedef  int u_int ;
struct block {int dummy; } ;
typedef  int /*<<< orphan*/  compiler_state_t ;
typedef  scalar_t__ bpf_u_int32 ;
typedef  int /*<<< orphan*/  bpf_int32 ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_B ; 
 int /*<<< orphan*/  BPF_H ; 
 int /*<<< orphan*/  ETHERTYPE_DN ; 
 int /*<<< orphan*/  OR_LINKPL ; 
#define  Q_AND 133 
#define  Q_DEFAULT 132 
#define  Q_DST 131 
#define  Q_ISO 130 
#define  Q_OR 129 
#define  Q_SRC 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct block*,struct block*) ; 
 struct block* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct block* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct block* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct block*,struct block*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static struct block *
FUNC8(compiler_state_t *cstate, bpf_u_int32 addr, int dir)
{
	struct block *b0, *b1, *b2, *tmp;
	u_int offset_lh;	/* offset if long header is received */
	u_int offset_sh;	/* offset if short header is received */

	switch (dir) {

	case Q_DST:
		offset_sh = 1;	/* follows flags */
		offset_lh = 7;	/* flgs,darea,dsubarea,HIORD */
		break;

	case Q_SRC:
		offset_sh = 3;	/* follows flags, dstnode */
		offset_lh = 15;	/* flgs,darea,dsubarea,did,sarea,ssub,HIORD */
		break;

	case Q_AND:
		/* Inefficient because we do our Calvinball dance twice */
		b0 = FUNC8(cstate, addr, Q_SRC);
		b1 = FUNC8(cstate, addr, Q_DST);
		FUNC2(b0, b1);
		return b1;

	case Q_OR:
	case Q_DEFAULT:
		/* Inefficient because we do our Calvinball dance twice */
		b0 = FUNC8(cstate, addr, Q_SRC);
		b1 = FUNC8(cstate, addr, Q_DST);
		FUNC6(b0, b1);
		return b1;

	case Q_ISO:
		FUNC1(cstate, "ISO host filtering not implemented");

	default:
		FUNC0();
	}
	b0 = FUNC4(cstate, ETHERTYPE_DN);
	/* Check for pad = 1, long header case */
	tmp = FUNC5(cstate, OR_LINKPL, 2, BPF_H,
	    (bpf_int32)FUNC7(0x0681), (bpf_int32)FUNC7(0x07FF));
	b1 = FUNC3(cstate, OR_LINKPL, 2 + 1 + offset_lh,
	    BPF_H, (bpf_int32)FUNC7((u_short)addr));
	FUNC2(tmp, b1);
	/* Check for pad = 0, long header case */
	tmp = FUNC5(cstate, OR_LINKPL, 2, BPF_B, (bpf_int32)0x06, (bpf_int32)0x7);
	b2 = FUNC3(cstate, OR_LINKPL, 2 + offset_lh, BPF_H, (bpf_int32)FUNC7((u_short)addr));
	FUNC2(tmp, b2);
	FUNC6(b2, b1);
	/* Check for pad = 1, short header case */
	tmp = FUNC5(cstate, OR_LINKPL, 2, BPF_H,
	    (bpf_int32)FUNC7(0x0281), (bpf_int32)FUNC7(0x07FF));
	b2 = FUNC3(cstate, OR_LINKPL, 2 + 1 + offset_sh, BPF_H, (bpf_int32)FUNC7((u_short)addr));
	FUNC2(tmp, b2);
	FUNC6(b2, b1);
	/* Check for pad = 0, short header case */
	tmp = FUNC5(cstate, OR_LINKPL, 2, BPF_B, (bpf_int32)0x02, (bpf_int32)0x7);
	b2 = FUNC3(cstate, OR_LINKPL, 2 + offset_sh, BPF_H, (bpf_int32)FUNC7((u_short)addr));
	FUNC2(tmp, b2);
	FUNC6(b2, b1);

	/* Combine with test for cstate->linktype */
	FUNC2(b0, b1);
	return b1;
}