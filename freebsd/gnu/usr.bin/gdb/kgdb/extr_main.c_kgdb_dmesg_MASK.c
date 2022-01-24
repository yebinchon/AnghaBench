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
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 scalar_t__ quiet ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,int) ; 

void
FUNC5(void)
{
	CORE_ADDR bufp;
	int size, rseq, wseq;
	char c;

	/*
	 * Display the unread portion of the message buffer. This gives the
	 * user a some initial data to work from.
	 */
	if (quiet)
		return;
	bufp = FUNC1("msgbufp->msg_ptr");
	size = (int)FUNC1("msgbufp->msg_size");
	if (bufp == 0 || size == 0)
		return;
	rseq = (int)FUNC1("msgbufp->msg_rseq");
	wseq = (int)FUNC1("msgbufp->msg_wseq");
	rseq = FUNC0(size, rseq);
	wseq = FUNC0(size, wseq);
	if (rseq == wseq)
		return;

	FUNC2("\nUnread portion of the kernel message buffer:\n");
	while (rseq < wseq) {
		FUNC4(bufp + rseq, &c, 1);
		FUNC3(c);
		rseq++;
		if (rseq == size)
			rseq = 0;
	}
	if (c != '\n')
		FUNC3('\n');
	FUNC3('\n');
}