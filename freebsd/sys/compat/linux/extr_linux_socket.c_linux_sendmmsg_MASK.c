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
struct thread {int* td_retval; } ;
struct linux_sendmmsg_args {int vlen; int /*<<< orphan*/  flags; int /*<<< orphan*/  s; int /*<<< orphan*/  msg; } ;
struct l_mmsghdr {int /*<<< orphan*/  msg_len; int /*<<< orphan*/  msg_hdr; } ;
typedef  int l_uint ;

/* Variables and functions */
 struct l_mmsghdr* FUNC0 (int /*<<< orphan*/ ) ; 
 int UIO_MAXIOV ; 
 int FUNC1 (int*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC3(struct thread *td, struct linux_sendmmsg_args *args)
{
	struct l_mmsghdr *msg;
	l_uint retval;
	int error, datagrams;

	if (args->vlen > UIO_MAXIOV)
		args->vlen = UIO_MAXIOV;

	msg = FUNC0(args->msg);
	datagrams = 0;
	while (datagrams < args->vlen) {
		error = FUNC2(td, args->s, &msg->msg_hdr,
		    args->flags);
		if (error != 0)
			break;

		retval = td->td_retval[0];
		error = FUNC1(&retval, &msg->msg_len, sizeof(msg->msg_len));
		if (error != 0)
			break;
		++msg;
		++datagrams;
	}
	if (error == 0)
		td->td_retval[0] = datagrams;
	return (error);
}