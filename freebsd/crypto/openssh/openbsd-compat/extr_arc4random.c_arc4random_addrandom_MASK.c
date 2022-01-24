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
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 scalar_t__ IVSZ ; 
 scalar_t__ KEYSZ ; 
 int FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  rs_initialized ; 

void
FUNC5(u_char *dat, int datlen)
{
	int m;

	FUNC1();
	if (!rs_initialized)
		FUNC4();
	while (datlen > 0) {
		m = FUNC0(datlen, KEYSZ + IVSZ);
		FUNC3(dat, m);
		dat += m;
		datlen -= m;
	}
	FUNC2();
}