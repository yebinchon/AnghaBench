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
 int /*<<< orphan*/  IAC ; 
 int OPT_REPLY_SIZE ; 
 int /*<<< orphan*/  SB ; 
 int /*<<< orphan*/  TELQUAL_IS ; 
 scalar_t__ FUNC0 (int) ; 
 unsigned char* opt_reply ; 
 unsigned char* opt_replyend ; 
 unsigned char* opt_replyp ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (unsigned char*,int) ; 
 int /*<<< orphan*/  telopt_environ ; 

void
FUNC3(void)
{
	if (opt_reply)
		opt_reply = (unsigned char *)FUNC2(opt_reply, OPT_REPLY_SIZE);
	else
		opt_reply = (unsigned char *)FUNC0(OPT_REPLY_SIZE);
	if (opt_reply == NULL) {
/*@*/		FUNC1("env_opt_start: malloc()/realloc() failed!!!\n");
		opt_reply = opt_replyp = opt_replyend = NULL;
		return;
	}
	opt_replyp = opt_reply;
	opt_replyend = opt_reply + OPT_REPLY_SIZE;
	*opt_replyp++ = IAC;
	*opt_replyp++ = SB;
	*opt_replyp++ = telopt_environ;
	*opt_replyp++ = TELQUAL_IS;
}