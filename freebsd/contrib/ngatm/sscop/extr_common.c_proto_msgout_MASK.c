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
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int loose ; 
 int /*<<< orphan*/  sscop_fd ; 
 scalar_t__ sscopframe ; 
 int /*<<< orphan*/  FUNC4 (struct uni_msg*) ; 
 void* FUNC5 (struct uni_msg*) ; 
 int verbose ; 
 int FUNC6 (int /*<<< orphan*/ ,struct iovec*,int) ; 

void
FUNC7(struct uni_msg *m)
{
	struct iovec iov[2];
	u_int32_t flen;
	ssize_t size;
	static int sent;
	int fl;

	if (verbose & 0x0002)
		FUNC1("send", m->b_rptr, FUNC5(m));
	if (loose > 0 && (sent++ % loose) == loose - 1) {
		FUNC0(("loosing message"));
		FUNC4(m);
		return;
	}

	flen = FUNC5(m);

	iov[0].iov_len = sscopframe ? 4 : 0;
	iov[0].iov_base = (caddr_t)&flen;
	iov[1].iov_len = FUNC5(m);
	iov[1].iov_base = m->b_rptr;

	if ((fl = FUNC3(sscop_fd, F_GETFL, 0)) == -1)
		FUNC2(1, "cannot get flags for sscop fd");
	fl &= ~O_NONBLOCK;
	if (FUNC3(sscop_fd, F_SETFL, fl) == -1)
		FUNC2(1, "cannot set flags for sscop fd");

	if ((size = FUNC6(sscop_fd, iov, 2)) == -1)
		FUNC2(1, "write sscop");
	if ((size_t)size != iov[0].iov_len + iov[1].iov_len)
		FUNC2(1, "short sscop write %zu %zu %zd",
		    iov[0].iov_len, iov[1].iov_len, size);

	fl |= O_NONBLOCK;
	if (FUNC3(sscop_fd, F_SETFL, fl) == -1)
		FUNC2(1, "cannot restore flags for sscop fd");

	FUNC4(m);
}