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
struct _parse_state {unsigned long ps_u_imm; } ;
struct _memstream {int dummy; } ;

/* Variables and functions */
 int BUFSIZE ; 
 int T_ERR ; 
 int T_IMM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char FUNC2 (struct _memstream*) ; 
 int FUNC3 (struct _memstream*) ; 
 unsigned long FUNC4 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct _memstream *ms, struct _parse_state *ps)
{
	int c, i, sign = 0;
	char buf[BUFSIZE + 1];
	char *p;

	for (i = 0; i < BUFSIZE; i++) {
retry:
		c = FUNC3(ms);
		if (i == 0) {
			if (sign == 0 && (c == '+' || c == '-')) {
				sign = c;
				FUNC2(ms);
				goto retry;
			} else if (!FUNC0(c))
				break;
		} else if (!FUNC1(c))
			if (!(i == 1 && c == 'x'))
				break;
		buf[i] = FUNC2(ms);
	}
	buf[i] = '\0';
	ps->ps_u_imm = FUNC4(buf, &p, 0);
	if ((p - buf) != i)
		return (T_ERR);
	if (sign == '-')
		ps->ps_u_imm = (unsigned long)-(long)ps->ps_u_imm;
	return (T_IMM);
}