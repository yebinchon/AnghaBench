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
struct kevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVFILT_VNODE ; 
 int EV_ADD ; 
 int EV_ONESHOT ; 
 int /*<<< orphan*/  FUNC0 (struct kevent*,uintptr_t,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NOTE_ATTRIB ; 
 int NOTE_DELETE ; 
 int NOTE_EXTEND ; 
 int NOTE_LINK ; 
 int NOTE_RENAME ; 
 int NOTE_REVOKE ; 
 int NOTE_WRITE ; 
 int FUNC1 (scalar_t__,struct kevent*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ kq ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ target ; 

int
FUNC3(void)
{
	struct kevent eventlist[1];

	kq = FUNC2();
	if (kq < 0) {
		return -1;
	}
	FUNC0(&eventlist[0], (uintptr_t)target, EVFILT_VNODE,
		EV_ADD | EV_ONESHOT, NOTE_DELETE |
		NOTE_WRITE | NOTE_EXTEND | NOTE_ATTRIB |
		NOTE_LINK | NOTE_RENAME | NOTE_REVOKE, 0, 0);
	return FUNC1(kq, eventlist, 1, NULL, 0, NULL);
}