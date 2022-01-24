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
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  SCR ;
typedef  int /*<<< orphan*/  CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  E_C_LIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

int
FUNC5(SCR *sp, const CHAR_T *p, size_t len, size_t col, u_int flags)
{
	if (len > 0 && FUNC3(sp, p, &col, len, FUNC2(E_C_LIST), 0))
		return (1);
	if (!FUNC0(sp) && FUNC2(E_C_LIST)) {
		p = FUNC1("$");
		if (FUNC3(sp, p, &col, 1, FUNC2(E_C_LIST), 0))
			return (1);
	}
	if (!FUNC0(sp))
		(void)FUNC4(sp, "\n");
	return (0);
}