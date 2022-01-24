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
typedef  void* u_int32_t ;
struct uni_msg {scalar_t__ b_rptr; } ;
struct iovec {int iov_len; scalar_t__ iov_base; } ;
typedef  int ssize_t ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct uni_msg*) ; 
 void* FUNC3 (struct uni_msg*) ; 
 scalar_t__ useframe ; 
 int /*<<< orphan*/  user_out_fd ; 
 int FUNC4 (int /*<<< orphan*/ ,struct iovec*,int) ; 

void
FUNC5(struct uni_msg *m)
{
	struct iovec iov[2];
	u_int32_t flen;
	ssize_t size;

	flen = FUNC3(m);

	iov[0].iov_len = useframe ? 4 : 0;
	iov[0].iov_base = (caddr_t)&flen;
	iov[1].iov_len = FUNC3(m);
	iov[1].iov_base = m->b_rptr;

	if ((size = FUNC4(user_out_fd, iov, 2)) == -1)
		FUNC0(1, "write sscop");
	if ((size_t)size != iov[0].iov_len + iov[1].iov_len)
		FUNC1(1, "short sscop write");

	FUNC2(m);
}