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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  ul_ps_strings ;
struct ps_strings {char** ps_argvstr; int ps_nargvstr; } ;

/* Variables and functions */
 int SPT_BUFSIZE ; 
 char* FUNC0 () ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,...) ; 
 size_t FUNC3 (char*) ; 
 int FUNC4 (char*,unsigned long*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC6(const char *fmt, va_list ap)
{
	static struct ps_strings *ps_strings;
	static char *buf = NULL;
	static char *obuf = NULL;
	static char **oargv, *kbuf;
	static int oargc = -1;
	static char *nargv[2] = { NULL, NULL };
	char **nargvp;
	int nargc;
	int i;
	size_t len;
	unsigned long ul_ps_strings;

	if (buf == NULL) {
		buf = FUNC1(SPT_BUFSIZE);
		if (buf == NULL)
			return (NULL);
		nargv[0] = buf;
	}

	if (obuf == NULL ) {
		obuf = FUNC1(SPT_BUFSIZE);
		if (obuf == NULL)
			return (NULL);
		*obuf = '\0';
	}

	if (fmt) {
		buf[SPT_BUFSIZE - 1] = '\0';

		if (fmt[0] == '-') {
			/* skip program name prefix */
			fmt++;
			len = 0;
		} else {
			/* print program name heading for grep */
			(void)FUNC2(buf, SPT_BUFSIZE, "%s: ", FUNC0());
			len = FUNC3(buf);
		}

		/* print the argument string */
		(void)FUNC5(buf + len, SPT_BUFSIZE - len, fmt, ap);

		nargvp = nargv;
		nargc = 1;
		kbuf = buf;
	} else if (*obuf != '\0') {
		/* Idea from NetBSD - reset the title on fmt == NULL */
		nargvp = oargv;
		nargc = oargc;
		kbuf = obuf;
	} else
		/* Nothing to restore */
		return (NULL);

	if (ps_strings == NULL) {
		len = sizeof(ul_ps_strings);
		if (FUNC4("kern.ps_strings", &ul_ps_strings, &len, NULL,
		    0) == -1)
			return (NULL);
		ps_strings = (struct ps_strings *)ul_ps_strings;
	}

	/*
	 * PS_STRINGS points to zeroed memory on a style #2 kernel.
	 * Should not happen.
	 */
	if (ps_strings->ps_argvstr == NULL)
		return (NULL);

	/* style #3 */
	if (oargc == -1) {
		/* Record our original args */
		oargc = ps_strings->ps_nargvstr;
		oargv = ps_strings->ps_argvstr;
		for (i = len = 0; i < oargc; i++) {
			/*
			 * The program may have scribbled into its
			 * argv array, e.g., to remove some arguments.
			 * If that has happened, break out before
			 * trying to call strlen on a NULL pointer.
			 */
			if (oargv[i] == NULL) {
				oargc = i;
				break;
			}
			FUNC2(obuf + len, SPT_BUFSIZE - len, "%s%s",
			    len != 0 ? " " : "", oargv[i]);
			if (len != 0)
				len++;
			len += FUNC3(oargv[i]);
			if (len >= SPT_BUFSIZE)
				break;
		}
	}
	ps_strings->ps_nargvstr = nargc;
	ps_strings->ps_argvstr = nargvp;

	return (nargvp[0]);
}