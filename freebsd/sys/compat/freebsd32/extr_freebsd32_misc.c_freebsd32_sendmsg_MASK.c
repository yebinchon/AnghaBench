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
struct thread {int dummy; } ;
struct sockaddr {int dummy; } ;
struct msghdr32 {int /*<<< orphan*/  msg_iovlen; int /*<<< orphan*/  msg_iov; } ;
struct msghdr {int msg_controllen; int /*<<< orphan*/ * msg_control; struct sockaddr* msg_name; int /*<<< orphan*/  msg_namelen; struct sockaddr* msg_iov; } ;
struct mbuf {int dummy; } ;
typedef  struct sockaddr iovec ;
struct freebsd32_sendmsg_args {int /*<<< orphan*/  flags; int /*<<< orphan*/  s; int /*<<< orphan*/  msg; } ;
struct cmsghdr {int dummy; } ;
typedef  int /*<<< orphan*/  m32 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  EMSGSIZE ; 
 int /*<<< orphan*/  M_IOV ; 
 int /*<<< orphan*/  M_SONAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UIO_USERSPACE ; 
 int FUNC1 (int /*<<< orphan*/ ,struct msghdr32*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mbuf**,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sockaddr**,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct msghdr*) ; 
 int FUNC6 (struct sockaddr**,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct thread*,int /*<<< orphan*/ ,struct msghdr*,int /*<<< orphan*/ ,struct mbuf*,int /*<<< orphan*/ ) ; 

int
FUNC8(struct thread *td,
		  struct freebsd32_sendmsg_args *uap)
{
	struct msghdr msg;
	struct msghdr32 m32;
	struct iovec *iov;
	struct mbuf *control = NULL;
	struct sockaddr *to = NULL;
	int error;

	error = FUNC1(uap->msg, &m32, sizeof(m32));
	if (error)
		return (error);
	error = FUNC5(uap->msg, &msg);
	if (error)
		return (error);
	error = FUNC4(FUNC0(m32.msg_iov), m32.msg_iovlen, &iov,
	    EMSGSIZE);
	if (error)
		return (error);
	msg.msg_iov = iov;
	if (msg.msg_name != NULL) {
		error = FUNC6(&to, msg.msg_name, msg.msg_namelen);
		if (error) {
			to = NULL;
			goto out;
		}
		msg.msg_name = to;
	}

	if (msg.msg_control) {
		if (msg.msg_controllen < sizeof(struct cmsghdr)) {
			error = EINVAL;
			goto out;
		}

		error = FUNC3(&control, msg.msg_control,
		    msg.msg_controllen);
		if (error)
			goto out;

		msg.msg_control = NULL;
		msg.msg_controllen = 0;
	}

	error = FUNC7(td, uap->s, &msg, uap->flags, control,
	    UIO_USERSPACE);

out:
	FUNC2(iov, M_IOV);
	if (to)
		FUNC2(to, M_SONAME);
	return (error);
}