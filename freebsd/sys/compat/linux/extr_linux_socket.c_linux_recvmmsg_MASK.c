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
struct timespec {scalar_t__ tv_sec; } ;
struct thread {int* td_retval; } ;
struct msghdr {int msg_flags; } ;
struct linux_recvmmsg_args {int vlen; int flags; scalar_t__ timeout; int /*<<< orphan*/  s; int /*<<< orphan*/  msg; } ;
struct l_timespec {int dummy; } ;
struct l_mmsghdr {int /*<<< orphan*/  msg_len; int /*<<< orphan*/  msg_hdr; } ;
typedef  int l_uint ;

/* Variables and functions */
 int LINUX_MSG_DONTWAIT ; 
 int LINUX_MSG_WAITFORONE ; 
 int MSG_OOB ; 
 struct l_mmsghdr* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,struct l_timespec*,int) ; 
 int FUNC2 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct timespec*) ; 
 int FUNC4 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct msghdr*) ; 
 int FUNC5 (struct timespec*,struct l_timespec*) ; 
 int /*<<< orphan*/  FUNC6 (struct timespec*,struct timespec*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC7 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC8 (struct timespec*,struct timespec*,struct timespec*) ; 

int
FUNC9(struct thread *td, struct linux_recvmmsg_args *args)
{
	struct l_mmsghdr *msg;
	struct msghdr bsd_msg;
	struct l_timespec lts;
	struct timespec ts, tts;
	l_uint retval;
	int error, datagrams;

	if (args->timeout) {
		error = FUNC1(args->timeout, &lts, sizeof(struct l_timespec));
		if (error != 0)
			return (error);
		error = FUNC5(&ts, &lts);
		if (error != 0)
			return (error);
		FUNC3(&tts);
		FUNC6(&tts, &ts, &tts);
	}

	msg = FUNC0(args->msg);
	datagrams = 0;
	while (datagrams < args->vlen) {
		error = FUNC4(td, args->s, &msg->msg_hdr,
		    args->flags & ~LINUX_MSG_WAITFORONE, &bsd_msg);
		if (error != 0)
			break;

		retval = td->td_retval[0];
		error = FUNC2(&retval, &msg->msg_len, sizeof(msg->msg_len));
		if (error != 0)
			break;
		++msg;
		++datagrams;

		/*
		 * MSG_WAITFORONE turns on MSG_DONTWAIT after one packet.
		 */
		if (args->flags & LINUX_MSG_WAITFORONE)
			args->flags |= LINUX_MSG_DONTWAIT;

		/*
		 * See BUGS section of recvmmsg(2).
		 */
		if (args->timeout) {
			FUNC3(&ts);
			FUNC8(&ts, &tts, &ts);
			if (!FUNC7(&ts) || ts.tv_sec > 0)
				break;
		}
		/* Out of band data, return right away. */
		if (bsd_msg.msg_flags & MSG_OOB)
			break;
	}
	if (error == 0)
		td->td_retval[0] = datagrams;
	return (error);
}