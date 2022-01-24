#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct rsocket {int state; size_t sbuf_bytes_avail; size_t target_sge; size_t sq_inline; void* sbuf; int /*<<< orphan*/  slock; TYPE_2__* ssgl; TYPE_1__* target_sgl; scalar_t__ iomap_pending; } ;
struct iovec {size_t iov_len; } ;
typedef  int ssize_t ;
struct TYPE_4__ {size_t addr; size_t length; } ;
struct TYPE_3__ {size_t length; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  ECONNRESET ; 
 scalar_t__ EINPROGRESS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IBV_SEND_INLINE ; 
 size_t RS_MAX_TRANSFER ; 
 size_t RS_OLAP_START_SIZE ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  idm ; 
 struct rsocket* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rsocket*) ; 
 int /*<<< orphan*/  rs_conn_can_send ; 
 int /*<<< orphan*/  FUNC5 (void*,struct iovec const**,size_t*,size_t) ; 
 int FUNC6 (struct rsocket*) ; 
 int FUNC7 (struct rsocket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rsocket*,int) ; 
 int rs_opening ; 
 size_t FUNC9 (struct rsocket*) ; 
 int FUNC10 (struct rsocket*,int) ; 
 int rs_writable ; 
 int FUNC11 (struct rsocket*,TYPE_2__*,int,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC12(int socket, const struct iovec *iov, int iovcnt, int flags)
{
	struct rsocket *rs;
	const struct iovec *cur_iov;
	size_t left, len, offset = 0;
	uint32_t xfer_size, olen = RS_OLAP_START_SIZE;
	int i, ret = 0;

	rs = FUNC3(&idm, socket);
	if (rs->state & rs_opening) {
		ret = FUNC6(rs);
		if (ret) {
			if (errno == EINPROGRESS)
				errno = EAGAIN;
			return ret;
		}
	}

	cur_iov = iov;
	len = iov[0].iov_len;
	for (i = 1; i < iovcnt; i++)
		len += iov[i].iov_len;
	left = len;

	FUNC1(&rs->slock);
	if (rs->iomap_pending) {
		ret = FUNC10(rs, flags);
		if (ret)
			goto out;
	}
	for (; left; left -= xfer_size) {
		if (!FUNC4(rs)) {
			ret = FUNC7(rs, FUNC8(rs, flags),
					  rs_conn_can_send);
			if (ret)
				break;
			if (!(rs->state & rs_writable)) {
				ret = FUNC0(ECONNRESET);
				break;
			}
		}

		if (olen < left) {
			xfer_size = olen;
			if (olen < RS_MAX_TRANSFER)
				olen <<= 1;
		} else {
			xfer_size = left;
		}

		if (xfer_size > rs->sbuf_bytes_avail)
			xfer_size = rs->sbuf_bytes_avail;
		if (xfer_size > rs->target_sgl[rs->target_sge].length)
			xfer_size = rs->target_sgl[rs->target_sge].length;

		if (xfer_size <= FUNC9(rs)) {
			FUNC5((void *) (uintptr_t) rs->ssgl[0].addr,
				    &cur_iov, &offset, xfer_size);
			rs->ssgl[0].length = xfer_size;
			ret = FUNC11(rs, rs->ssgl, 1, xfer_size,
					    xfer_size <= rs->sq_inline ? IBV_SEND_INLINE : 0);
			if (xfer_size < FUNC9(rs))
				rs->ssgl[0].addr += xfer_size;
			else
				rs->ssgl[0].addr = (uintptr_t) rs->sbuf;
		} else {
			rs->ssgl[0].length = FUNC9(rs);
			FUNC5((void *) (uintptr_t) rs->ssgl[0].addr, &cur_iov,
				    &offset, rs->ssgl[0].length);
			rs->ssgl[1].length = xfer_size - rs->ssgl[0].length;
			FUNC5(rs->sbuf, &cur_iov, &offset, rs->ssgl[1].length);
			ret = FUNC11(rs, rs->ssgl, 2, xfer_size,
					    xfer_size <= rs->sq_inline ? IBV_SEND_INLINE : 0);
			rs->ssgl[0].addr = (uintptr_t) rs->sbuf + rs->ssgl[1].length;
		}
		if (ret)
			break;
	}
out:
	FUNC2(&rs->slock);

	return (ret && left == len) ? ret : len - left;
}