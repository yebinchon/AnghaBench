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
struct stmt {int code; int k; } ;

/* Variables and functions */
 int AX_ATOM ; 
 int A_ATOM ; 
 int /*<<< orphan*/  BPF_A ; 
#define  BPF_ALU 135 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  BPF_IND ; 
#define  BPF_JMP 134 
#define  BPF_LD 133 
#define  BPF_LDX 132 
 int /*<<< orphan*/  BPF_MEM ; 
#define  BPF_MISC 131 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
#define  BPF_RET 130 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
#define  BPF_ST 129 
#define  BPF_STX 128 
 int /*<<< orphan*/  BPF_TXA ; 
 int /*<<< orphan*/  BPF_X ; 
 int NOP ; 
 int X_ATOM ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int
FUNC6(struct stmt *s)
{
	register int c = s->code;

	if (c == NOP)
		return -1;

	switch (FUNC0(c)) {

	case BPF_RET:
		return (FUNC3(c) == BPF_A) ? A_ATOM :
			(FUNC3(c) == BPF_X) ? X_ATOM : -1;

	case BPF_LD:
	case BPF_LDX:
		return (FUNC2(c) == BPF_IND) ? X_ATOM :
			(FUNC2(c) == BPF_MEM) ? s->k : -1;

	case BPF_ST:
		return A_ATOM;

	case BPF_STX:
		return X_ATOM;

	case BPF_JMP:
	case BPF_ALU:
		if (FUNC4(c) == BPF_X)
			return AX_ATOM;
		return A_ATOM;

	case BPF_MISC:
		return FUNC1(c) == BPF_TXA ? X_ATOM : A_ATOM;
	}
	FUNC5();
	/* NOTREACHED */
}