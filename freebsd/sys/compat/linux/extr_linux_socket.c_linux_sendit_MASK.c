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
struct msghdr {int msg_namelen; struct sockaddr* msg_name; } ;
struct mbuf {int dummy; } ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;

/* Variables and functions */
 int /*<<< orphan*/  M_SONAME ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct thread*,int,struct msghdr*,int /*<<< orphan*/ ,struct mbuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct sockaddr*,struct sockaddr**,int*) ; 

__attribute__((used)) static int
FUNC4(struct thread *td, int s, struct msghdr *mp, int flags,
    struct mbuf *control, enum uio_seg segflg)
{
	struct sockaddr *to;
	int error, len;

	if (mp->msg_name != NULL) {
		len = mp->msg_namelen;
		error = FUNC3(mp->msg_name, &to, &len);
		if (error != 0)
			return (error);
		mp->msg_name = to;
	} else
		to = NULL;

	error = FUNC1(td, s, mp, FUNC2(flags), control,
	    segflg);

	if (to)
		FUNC0(to, M_SONAME);
	return (error);
}