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
struct comm_point {size_t http_stored; size_t tcp_byte_count; int /*<<< orphan*/  cb_arg; int /*<<< orphan*/  (* callback ) (struct comm_point*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETEVENT_DONE ; 
 int /*<<< orphan*/  NETEVENT_NOERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) (struct comm_point*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *)) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct comm_point*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct comm_point*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(struct comm_point* c)
{
	/* c->buffer at position..limit has new data we read in.
	 * the buffer itself is full of nonchunked data.
	 * we are looking to read tcp_byte_count more data
	 * and then the transfer is done. */
	size_t remainbufferlen;
	size_t got_now = FUNC4(c->buffer) - c->http_stored;
	if(c->tcp_byte_count <= got_now) {
		/* done, this is the last data fragment */
		c->http_stored = 0;
		FUNC5(c->buffer, 0);
		FUNC0(FUNC1(c->callback));
		(void)(*c->callback)(c, c->cb_arg, NETEVENT_DONE, NULL);
		return 1;
	}
	c->tcp_byte_count -= got_now;
	/* if we have the buffer space,
	 * read more data collected into the buffer */
	remainbufferlen = FUNC2(c->buffer) -
		FUNC4(c->buffer);
	if(remainbufferlen >= c->tcp_byte_count ||
		remainbufferlen >= 2048) {
		size_t total = FUNC4(c->buffer);
		FUNC3(c->buffer);
		FUNC5(c->buffer, total);
		c->http_stored = total;
		/* return and wait to read more */
		return 1;
	}
	/* call callback with this data amount, then
	 * wait for more */
	c->http_stored = 0;
	FUNC5(c->buffer, 0);
	FUNC0(FUNC1(c->callback));
	(void)(*c->callback)(c, c->cb_arg, NETEVENT_NOERROR, NULL);
	/* c->callback has to buffer_clear(c->buffer). */
	/* return and wait to read more */
	return 1;
}