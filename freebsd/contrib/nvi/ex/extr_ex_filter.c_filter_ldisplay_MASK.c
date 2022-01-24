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
struct TYPE_3__ {int /*<<< orphan*/  ibp; int /*<<< orphan*/  ibcw; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ EX_PRIVATE ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_SYSERR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC8(SCR *sp, FILE *fp)
{
	size_t len;
	size_t wlen;
	CHAR_T *wp;

	EX_PRIVATE *exp;

	for (exp = FUNC0(sp); !FUNC3(sp, fp, &len) && !FUNC2(sp);) {
		FUNC1(sp, exp->ibcw, exp->ibp, len, wp, wlen);
		if (FUNC4(sp, wp, wlen, 0, 0))
			break;
	}
	if (FUNC6(fp))
		FUNC7(sp, M_SYSERR, "filter read");
	(void)FUNC5(fp);
	return (0);
}