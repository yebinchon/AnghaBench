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
struct TYPE_3__ {char* ibp; size_t ibp_len; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ EX_PRIVATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t,size_t) ; 
 scalar_t__ EINTR ; 
 int EOF ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(SCR *sp, FILE *fp, size_t *lenp)
{
	EX_PRIVATE *exp;
	size_t off;
	int ch;
	char *p;

	exp = FUNC1(sp);
	for (errno = 0, off = 0, p = exp->ibp;;) {
		if (off >= exp->ibp_len) {
			FUNC0(sp, exp->ibp, exp->ibp_len, off + 1);
			p = exp->ibp + off;
		}
		if ((ch = FUNC4(fp)) == EOF && !FUNC3(fp)) {
			if (errno == EINTR) {
				errno = 0;
				FUNC2(fp);
				continue;
			}
			return (1);
		}
		if (ch == EOF || ch == '\n') {
			if (ch == EOF && !off)
				return (1);
			*lenp = off;
			return (0);
		}
		*p++ = ch;
		++off;
	}
	/* NOTREACHED */
}