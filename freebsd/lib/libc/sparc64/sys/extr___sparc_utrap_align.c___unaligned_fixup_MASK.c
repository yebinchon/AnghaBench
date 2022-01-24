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
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct utrapframe {scalar_t__ uf_pc; scalar_t__ uf_sfar; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
#define  INS3_LDSH 136 
#define  INS3_LDSW 135 
#define  INS3_LDUH 134 
#define  INS3_LDUW 133 
#define  INS3_LDX 132 
#define  INS3_STH 131 
#define  INS3_STW 130 
#define  INS3_STX 129 
#define  IOP_LDST 128 
 int SIGILL ; 
 int /*<<< orphan*/  FUNC4 (struct utrapframe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct utrapframe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

int
FUNC9(struct utrapframe *uf)
{
	u_char *addr;
	u_long val;
	u_int insn;
	int sig;

	sig = 0;
	addr = (u_char *)uf->uf_sfar;
	insn = *(u_int *)uf->uf_pc;
	FUNC8();
	switch (FUNC2(insn)) {
	case IOP_LDST:
		switch (FUNC0(insn)) {
		case INS3_LDUH:
			val = FUNC6(addr, 2);
			FUNC5(uf, FUNC1(insn), val);
			break;
		case INS3_LDUW:
			val = FUNC6(addr, 4);
			FUNC5(uf, FUNC1(insn), val);
			break;
		case INS3_LDX:
			val = FUNC6(addr, 8);
			FUNC5(uf, FUNC1(insn), val);
			break;
		case INS3_LDSH:
			val = FUNC6(addr, 2);
			FUNC5(uf, FUNC1(insn),
			    FUNC3(val, 16));
			break;
		case INS3_LDSW:
			val = FUNC6(addr, 4);
			FUNC5(uf, FUNC1(insn),
			    FUNC3(val, 32));
			break;
		case INS3_STH:
			val = FUNC4(uf, FUNC1(insn));
			FUNC7(addr, val, 2);
			break;
		case INS3_STW:
			val = FUNC4(uf, FUNC1(insn));
			FUNC7(addr, val, 4);
			break;
		case INS3_STX:
			val = FUNC4(uf, FUNC1(insn));
			FUNC7(addr, val, 8);
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