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
 int FUNC0 () ; 
 int /*<<< orphan*/  SE ; 
 int /*<<< orphan*/  netoring ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * slc_reply ; 
 int /*<<< orphan*/ * slc_reply_eom ; 
 int /*<<< orphan*/ * slc_replyp ; 

void
FUNC4(void)
{
    int len;

    /* The end of negotiation command requires 2 bytes. */
    if (&slc_replyp[2] > slc_reply_eom)
            return;
    *slc_replyp++ = IAC;
    *slc_replyp++ = SE;
    len = slc_replyp - slc_reply;
    if (len <= 6)
	return;
    if (FUNC0() > len) {
	FUNC3(&netoring, slc_reply, slc_replyp - slc_reply);
	FUNC2('>', &slc_reply[2], slc_replyp - slc_reply - 2);
    }
/*@*/else FUNC1("slc_end_reply: not enough room\n");
}