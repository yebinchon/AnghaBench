#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tcp_req_info {int is_reply; TYPE_1__* cp; int /*<<< orphan*/  spool_buffer; scalar_t__ in_worker_handle; } ;
struct TYPE_3__ {scalar_t__ tcp_byte_count; int /*<<< orphan*/  repinfo; int /*<<< orphan*/  tcp_timeout_msec; scalar_t__ tcp_is_reading; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct tcp_req_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct tcp_req_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC10(struct tcp_req_info* req)
{
	if(req->in_worker_handle) {
		/* reply from mesh is in the spool_buffer */
		/* copy now, so that the spool buffer is free for other tasks
		 * before the callback is done */
		FUNC4(req->cp->buffer);
		FUNC7(req->cp->buffer,
			FUNC3(req->spool_buffer),
			FUNC6(req->spool_buffer));
		FUNC5(req->cp->buffer);
		req->is_reply = 1;
		return;
	}
	/* now that the query has been handled, that mesh_reply entry
	 * should be removed, from the tcp_req_info list,
	 * the mesh state cleanup removes then with region_cleanup and
	 * replies_sent true. */
	/* see if we can send it straight away (we are not doing
	 * anything else).  If so, copy to buffer and start */
	if(req->cp->tcp_is_reading && req->cp->tcp_byte_count == 0) {
		/* buffer is free, and was ready to read new query into,
		 * but we are now going to use it to send this answer */
		FUNC9(req,
			FUNC3(req->spool_buffer),
			FUNC6(req->spool_buffer));
		/* switch to listen to write events */
		FUNC2(req->cp);
		FUNC1(req->cp, -1,
			req->cp->tcp_timeout_msec);
		return;
	}
	/* queue up the answer behind the others already pending */
	if(!FUNC8(req, FUNC3(req->spool_buffer),
		FUNC6(req->spool_buffer))) {
		/* drop the connection, we are out of resources */
		FUNC0(&req->cp->repinfo);
	}
}