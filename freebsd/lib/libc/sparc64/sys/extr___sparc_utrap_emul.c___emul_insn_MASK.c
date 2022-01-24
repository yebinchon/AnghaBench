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
typedef  int u_long ;
typedef  int /*<<< orphan*/  u_int ;
struct utrapframe {scalar_t__ uf_pc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
#define  INS2_POPC 132 
#define  INS3_LDQF 131 
#define  INS3_STQF 130 
 int FUNC4 (int /*<<< orphan*/ ) ; 
#define  IOP_LDST 129 
#define  IOP_MISC 128 
 int SIGILL ; 
 scalar_t__ FUNC5 (struct utrapframe*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct utrapframe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct utrapframe*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 

int
FUNC11(struct utrapframe *uf)
{
	u_long reg, res;
	u_long *addr;
	u_int insn;
	int sig;
	int rd;
	int i;

	sig = 0;
	insn = *(u_int *)uf->uf_pc;
	FUNC10();
	switch (FUNC3(insn)) {
	case IOP_MISC:
		switch (FUNC0(insn)) {
		case INS2_POPC:
			if (FUNC2(insn) != 0) {
				sig = SIGILL;
				break;
			}
			reg = FUNC6(uf, insn);
			for (i = 0; i < 64; i++)
				res += (reg >> i) & 1;
			FUNC7(uf, FUNC1(insn), res);
			break;
		default:
			sig = SIGILL;
			break;
		}
		break;
	case IOP_LDST:
		switch (FUNC0(insn)) {
		case INS3_LDQF:
			rd = FUNC4(FUNC1(insn));
			addr = (u_long *)FUNC5(uf, insn);
			FUNC9(rd, addr[0]);
			FUNC9(rd + 2, addr[1]);
			break;
		case INS3_STQF:
			rd = FUNC4(FUNC1(insn));
			addr = (u_long *)FUNC5(uf, insn);
			addr[0] = FUNC8(rd);
			addr[1] = FUNC8(rd + 2);
			break;
		default:
			sig = SIGILL;
			break;
		}
		break;
	default:
		sig = SIGILL;
		break;
	}
	return (sig);
}