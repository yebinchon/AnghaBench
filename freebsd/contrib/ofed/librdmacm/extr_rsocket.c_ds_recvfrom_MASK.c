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
struct sockaddr {int dummy; } ;
struct rsocket {int state; size_t rmsg_head; int rq_size; int /*<<< orphan*/  rqe_avail; struct ds_rmsg* dmsg; } ;
struct ds_rmsg {size_t length; scalar_t__ offset; TYPE_1__* qp; } ;
struct ds_header {size_t length; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  socklen_t ;
struct TYPE_2__ {scalar_t__ rbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int MSG_PEEK ; 
 int FUNC1 (struct rsocket*,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (struct rsocket*)) ; 
 int /*<<< orphan*/  FUNC2 (struct rsocket*,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr*,int /*<<< orphan*/ *,struct ds_header*) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct rsocket*) ; 
 int /*<<< orphan*/  FUNC6 (struct rsocket*,int) ; 
 int rs_readable ; 

__attribute__((used)) static ssize_t FUNC7(struct rsocket *rs, void *buf, size_t len, int flags,
			   struct sockaddr *src_addr, socklen_t *addrlen)
{
	struct ds_rmsg *rmsg;
	struct ds_header *hdr;
	int ret;

	if (!(rs->state & rs_readable))
		return FUNC0(EINVAL);

	if (!FUNC5(rs)) {
		ret = FUNC1(rs, FUNC6(rs, flags),
				  rs_have_rdata);
		if (ret)
			return ret;
	}

	rmsg = &rs->dmsg[rs->rmsg_head];
	hdr = (struct ds_header *) (rmsg->qp->rbuf + rmsg->offset);
	if (len > rmsg->length - hdr->length)
		len = rmsg->length - hdr->length;

	FUNC4(buf, (void *) hdr + hdr->length, len);
	if (addrlen)
		FUNC3(src_addr, addrlen, hdr);

	if (!(flags & MSG_PEEK)) {
		FUNC2(rs, rmsg->qp, rmsg->offset);
		if (++rs->rmsg_head == rs->rq_size + 1)
			rs->rmsg_head = 0;
		rs->rqe_avail++;
	}

	return len;
}