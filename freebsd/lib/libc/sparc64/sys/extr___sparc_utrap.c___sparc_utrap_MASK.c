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
struct utrapframe {int uf_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct utrapframe*) ; 
#define  UT_FP_EXCEPTION_IEEE_754 131 
#define  UT_FP_EXCEPTION_OTHER 130 
#define  UT_ILLEGAL_INSTRUCTION 129 
#define  UT_MEM_ADDRESS_NOT_ALIGNED 128 
 int FUNC1 (struct utrapframe*) ; 
 int FUNC2 (struct utrapframe*) ; 
 int FUNC3 (struct utrapframe*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char** utrap_msg ; 

void
FUNC6(struct utrapframe *uf)
{
	int sig;

	switch (uf->uf_type) {
	case UT_FP_EXCEPTION_IEEE_754:
	case UT_FP_EXCEPTION_OTHER:
		sig = FUNC2(uf);
		break;
	case UT_ILLEGAL_INSTRUCTION:
		sig = FUNC1(uf);
		break;
	case UT_MEM_ADDRESS_NOT_ALIGNED:
		sig = FUNC3(uf);
		break;
	default:
		break;
	}
	if (sig) {
		FUNC5("__sparc_utrap: fatal ");
		FUNC5(utrap_msg[uf->uf_type]);
		FUNC5("\n");
		FUNC4(sig);
	}
	FUNC0(uf);
}