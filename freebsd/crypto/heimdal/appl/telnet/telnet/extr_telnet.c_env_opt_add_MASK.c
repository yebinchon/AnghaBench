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

/* Variables and functions */
#define  ENV_ESC 132 
#define  ENV_USERVAR 131 
#define  IAC 130 
#define  NEW_ENV_VALUE 129 
#define  NEW_ENV_VAR 128 
 int /*<<< orphan*/  OPT_REPLY_SIZE ; 
 scalar_t__ TELOPT_OLD_ENVIRON ; 
 unsigned char* FUNC0 (int,int) ; 
 unsigned char* FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  old_env_value ; 
 int /*<<< orphan*/  old_env_var ; 
 int /*<<< orphan*/ * opt_reply ; 
 int /*<<< orphan*/ * opt_replyend ; 
 int /*<<< orphan*/ * opt_replyp ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (char*) ; 
 scalar_t__ telopt_environ ; 

void
FUNC6(unsigned char *ep)
{
	unsigned char *vp, c;

	if (opt_reply == NULL)		/*XXX*/
		return;			/*XXX*/

	if (ep == NULL || *ep == '\0') {
		/* Send user defined variables first. */
		FUNC0(1, 0);
		while ((ep = FUNC0(0, 0)))
			FUNC6(ep);

		/* Now add the list of well know variables.  */
		FUNC0(1, 1);
		while ((ep = FUNC0(0, 1)))
			FUNC6(ep);
		return;
	}
	vp = FUNC1(ep);
        if (opt_replyp + (vp ? 2 * FUNC5((char *)vp) : 0) +
                                2 * FUNC5((char *)ep) + 6 > opt_replyend)
        {
		int len;
		void *tmp;
		opt_replyend += OPT_REPLY_SIZE;
		len = opt_replyend - opt_reply;
		tmp = FUNC4(opt_reply, len);
		if (tmp == NULL) {
/*@*/			FUNC3("env_opt_add: realloc() failed!!!\n");
			opt_reply = opt_replyp = opt_replyend = NULL;
			return;
		}
		opt_reply = tmp;
		opt_replyp = opt_reply + len - (opt_replyend - opt_replyp);
		opt_replyend = opt_reply + len;
	}
	if (FUNC2((char *)ep)) {
#ifdef	OLD_ENVIRON
		if (telopt_environ == TELOPT_OLD_ENVIRON)
			*opt_replyp++ = old_env_var;
		else
#endif
			*opt_replyp++ = NEW_ENV_VAR;
	} else
		*opt_replyp++ = ENV_USERVAR;
	for (;;) {
		while ((c = *ep++)) {
			if (opt_replyp + (2 + 2) > opt_replyend)
				return;
			switch(c&0xff) {
			case IAC:
				*opt_replyp++ = IAC;
				break;
			case NEW_ENV_VAR:
			case NEW_ENV_VALUE:
			case ENV_ESC:
			case ENV_USERVAR:
				*opt_replyp++ = ENV_ESC;
				break;
			}
			*opt_replyp++ = c;
		}
		if ((ep = vp)) {
			if (opt_replyp + (1 + 2 + 2) > opt_replyend)
				return;
#ifdef	OLD_ENVIRON
			if (telopt_environ == TELOPT_OLD_ENVIRON)
				*opt_replyp++ = old_env_value;
			else
#endif
				*opt_replyp++ = NEW_ENV_VALUE;
			vp = NULL;
		} else
			break;
	}
}