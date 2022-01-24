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
struct rsocket {int state; size_t sbuf_bytes_avail; size_t sq_inline; void* sbuf; int /*<<< orphan*/  slock; struct ibv_sge* ssgl; scalar_t__ iomap_pending; } ;
struct TYPE_2__ {scalar_t__ length; } ;
struct rs_iomap {scalar_t__ offset; TYPE_1__ sge; } ;
struct ibv_sge {uintptr_t addr; size_t length; scalar_t__ lkey; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNRESET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IBV_SEND_INLINE ; 
 size_t RS_MAX_TRANSFER ; 
 size_t RS_OLAP_START_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  idm ; 
 struct rsocket* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct rsocket*) ; 
 int /*<<< orphan*/  rs_conn_can_send ; 
 struct rs_iomap* FUNC6 (struct rsocket*,scalar_t__) ; 
 int FUNC7 (struct rsocket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rsocket*,int) ; 
 size_t FUNC9 (struct rsocket*) ; 
 int FUNC10 (struct rsocket*,int) ; 
 int rs_writable ; 
 int FUNC11 (struct rsocket*,struct rs_iomap*,scalar_t__,struct ibv_sge*,int,size_t,int /*<<< orphan*/ ) ; 

size_t FUNC12(int socket, const void *buf, size_t count, off_t offset, int flags)
{
	struct rsocket *rs;
	struct rs_iomap *iom = NULL;
	struct ibv_sge sge;
	size_t left = count;
	uint32_t xfer_size, olen = RS_OLAP_START_SIZE;
	int ret = 0;

	rs = FUNC3(&idm, socket);
	FUNC1(&rs->slock);
	if (rs->iomap_pending) {
		ret = FUNC10(rs, flags);
		if (ret)
			goto out;
	}
	for (; left; left -= xfer_size, buf += xfer_size, offset += xfer_size) {
		if (!iom || offset > iom->offset + iom->sge.length) {
			iom = FUNC6(rs, offset);
			if (!iom)
				break;
		}

		if (!FUNC5(rs)) {
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
		if (xfer_size > iom->offset + iom->sge.length - offset)
			xfer_size = iom->offset + iom->sge.length - offset;

		if (xfer_size <= rs->sq_inline) {
			sge.addr = (uintptr_t) buf;
			sge.length = xfer_size;
			sge.lkey = 0;
			ret = FUNC11(rs, iom, offset, &sge, 1,
					      xfer_size, IBV_SEND_INLINE);
		} else if (xfer_size <= FUNC9(rs)) {
			FUNC4((void *) (uintptr_t) rs->ssgl[0].addr, buf, xfer_size);
			rs->ssgl[0].length = xfer_size;
			ret = FUNC11(rs, iom, offset, rs->ssgl, 1, xfer_size, 0);
			if (xfer_size < FUNC9(rs))
				rs->ssgl[0].addr += xfer_size;
			else
				rs->ssgl[0].addr = (uintptr_t) rs->sbuf;
		} else {
			rs->ssgl[0].length = FUNC9(rs);
			FUNC4((void *) (uintptr_t) rs->ssgl[0].addr, buf,
				rs->ssgl[0].length);
			rs->ssgl[1].length = xfer_size - rs->ssgl[0].length;
			FUNC4(rs->sbuf, buf + rs->ssgl[0].length, rs->ssgl[1].length);
			ret = FUNC11(rs, iom, offset, rs->ssgl, 2, xfer_size, 0);
			rs->ssgl[0].addr = (uintptr_t) rs->sbuf + rs->ssgl[1].length;
		}
		if (ret)
			break;
	}
out:
	FUNC2(&rs->slock);

	return (ret && left == count) ? ret : count - left;
}