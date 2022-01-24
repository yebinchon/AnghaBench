#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct rsocket {scalar_t__ type; int state; size_t rmsg_head; int rq_size; size_t rbuf_size; size_t rbuf_offset; size_t rbuf_bytes_avail; int /*<<< orphan*/  rlock; int /*<<< orphan*/ * rbuf; TYPE_1__* rmsg; int /*<<< orphan*/  rseq_no; } ;
typedef  int ssize_t ;
struct TYPE_2__ {size_t data; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EINPROGRESS ; 
 int MSG_PEEK ; 
 int MSG_WAITALL ; 
 scalar_t__ SOCK_DGRAM ; 
 int FUNC0 (struct rsocket*,void*,size_t,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  idm ; 
 struct rsocket* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  rs_conn_have_rdata ; 
 int FUNC5 (struct rsocket*) ; 
 int FUNC6 (struct rsocket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct rsocket*) ; 
 int /*<<< orphan*/  FUNC8 (struct rsocket*,int) ; 
 int rs_opening ; 
 size_t FUNC9 (struct rsocket*,void*,size_t) ; 
 int rs_readable ; 

ssize_t FUNC10(int socket, void *buf, size_t len, int flags)
{
	struct rsocket *rs;
	size_t left = len;
	uint32_t end_size, rsize;
	int ret = 0;

	rs = FUNC3(&idm, socket);
	if (rs->type == SOCK_DGRAM) {
		FUNC1(&rs->rlock);
		ret = FUNC0(rs, buf, len, flags, NULL, NULL);
		FUNC2(&rs->rlock);
		return ret;
	}

	if (rs->state & rs_opening) {
		ret = FUNC5(rs);
		if (ret) {
			if (errno == EINPROGRESS)
				errno = EAGAIN;
			return ret;
		}
	}
	FUNC1(&rs->rlock);
	do {
		if (!FUNC7(rs)) {
			ret = FUNC6(rs, FUNC8(rs, flags),
					  rs_conn_have_rdata);
			if (ret)
				break;
		}

		if (flags & MSG_PEEK) {
			left = len - FUNC9(rs, buf, left);
			break;
		}

		for (; left && FUNC7(rs); left -= rsize) {
			if (left < rs->rmsg[rs->rmsg_head].data) {
				rsize = left;
				rs->rmsg[rs->rmsg_head].data -= left;
			} else {
				rs->rseq_no++;
				rsize = rs->rmsg[rs->rmsg_head].data;
				if (++rs->rmsg_head == rs->rq_size + 1)
					rs->rmsg_head = 0;
			}

			end_size = rs->rbuf_size - rs->rbuf_offset;
			if (rsize > end_size) {
				FUNC4(buf, &rs->rbuf[rs->rbuf_offset], end_size);
				rs->rbuf_offset = 0;
				buf += end_size;
				rsize -= end_size;
				left -= end_size;
				rs->rbuf_bytes_avail += end_size;
			}
			FUNC4(buf, &rs->rbuf[rs->rbuf_offset], rsize);
			rs->rbuf_offset += rsize;
			buf += rsize;
			rs->rbuf_bytes_avail += rsize;
		}

	} while (left && (flags & MSG_WAITALL) && (rs->state & rs_readable));

	FUNC2(&rs->rlock);
	return (ret && left == len) ? ret : len - left;
}