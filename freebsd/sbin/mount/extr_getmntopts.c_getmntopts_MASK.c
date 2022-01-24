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
struct mntopt {int m_inverse; int m_flag; scalar_t__ m_altloc; int /*<<< orphan*/ * m_option; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  getmnt_silent ; 
 char* FUNC3 (char*,char) ; 
 char* FUNC4 (char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ *,int) ; 
 char* FUNC7 (char*,char*) ; 

void
FUNC8(const char *options, const struct mntopt *m0, int *flagp,
	int *altflagp)
{
	const struct mntopt *m;
	int negative, len;
	char *opt, *optbuf, *p;
	int *thisflagp;

	/* Copy option string, since it is about to be torn asunder... */
	if ((optbuf = FUNC4(options)) == NULL)
		FUNC0(1, NULL);

	for (opt = optbuf; (opt = FUNC7(opt, ",")) != NULL; opt = NULL) {
		/* Check for "no" prefix. */
		if (opt[0] == 'n' && opt[1] == 'o') {
			negative = 1;
			opt += 2;
		} else
			negative = 0;

		/*
		 * for options with assignments in them (ie. quotas)
		 * ignore the assignment as it's handled elsewhere
		 */
		p = FUNC3(opt, '=');
		if (p != NULL)
			 *++p = '\0';

		/* Scan option table. */
		for (m = m0; m->m_option != NULL; ++m) {
			len = FUNC5(m->m_option);
			if (FUNC6(opt, m->m_option, len) == 0)
				if (opt[len] == '\0' || opt[len] == '=')
					break;
		}

		/* Save flag, or fail if option is not recognized. */
		if (m->m_option) {
			thisflagp = m->m_altloc ? altflagp : flagp;
			if (negative == m->m_inverse)
				*thisflagp |= m->m_flag;
			else
				*thisflagp &= ~m->m_flag;
		} else if (!getmnt_silent) {
			FUNC1(1, "-o %s: option not supported", opt);
		}
	}

	FUNC2(optbuf);
}