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
typedef  scalar_t__ uintmax_t ;
typedef  int /*<<< orphan*/  u_long ;
typedef  int intmax_t ;
typedef  char CHAR ;

/* Variables and functions */
 scalar_t__ INTMAX_MAX ; 
 scalar_t__ ULONG_MAX ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*,int,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char FUNC2 (scalar_t__) ; 

__attribute__((used)) static CHAR *
FUNC3(uintmax_t val, CHAR *endp, int base, int octzero, const char *xdigs)
{
	CHAR *cp = endp;
	intmax_t sval;

	/* quick test for small values; __ultoa is typically much faster */
	/* (perhaps instead we should run until small, then call __ultoa?) */
	if (val <= ULONG_MAX)
		return (FUNC0((u_long)val, endp, base, octzero, xdigs));
	switch (base) {
	case 10:
		if (val < 10) {
			*--cp = FUNC2(val % 10);
			return (cp);
		}
		if (val > INTMAX_MAX) {
			*--cp = FUNC2(val % 10);
			sval = val / 10;
		} else
			sval = val;
		do {
			*--cp = FUNC2(sval % 10);
			sval /= 10;
		} while (sval != 0);
		break;

	case 8:
		do {
			*--cp = FUNC2(val & 7);
			val >>= 3;
		} while (val);
		if (octzero && *cp != '0')
			*--cp = '0';
		break;

	case 16:
		do {
			*--cp = xdigs[val & 15];
			val >>= 4;
		} while (val);
		break;

	default:
		FUNC1();
	}
	return (cp);
}