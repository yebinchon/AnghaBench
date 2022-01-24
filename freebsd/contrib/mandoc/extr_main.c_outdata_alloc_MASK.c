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
struct curparse {int outtype; int /*<<< orphan*/  outopts; int /*<<< orphan*/  outdata; } ;

/* Variables and functions */
#define  OUTT_ASCII 133 
#define  OUTT_HTML 132 
#define  OUTT_LOCALE 131 
#define  OUTT_PDF 130 
#define  OUTT_PS 129 
#define  OUTT_UTF8 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct curparse *curp)
{
	switch (curp->outtype) {
	case OUTT_HTML:
		curp->outdata = FUNC1(curp->outopts);
		break;
	case OUTT_UTF8:
		curp->outdata = FUNC5(curp->outopts);
		break;
	case OUTT_LOCALE:
		curp->outdata = FUNC2(curp->outopts);
		break;
	case OUTT_ASCII:
		curp->outdata = FUNC0(curp->outopts);
		break;
	case OUTT_PDF:
		curp->outdata = FUNC3(curp->outopts);
		break;
	case OUTT_PS:
		curp->outdata = FUNC4(curp->outopts);
		break;
	default:
		break;
	}
}