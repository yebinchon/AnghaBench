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
struct comm_reply {int /*<<< orphan*/  c; } ;
struct comm_point {size_t http_stored; size_t tcp_byte_count; int http_in_chunk_headers; int /*<<< orphan*/  cb_arg; int /*<<< orphan*/  (* callback ) (struct comm_point*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct comm_reply*) ;int /*<<< orphan*/  buffer; int /*<<< orphan*/  http_temp; struct comm_reply repinfo; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETEVENT_NOERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) (struct comm_point*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct comm_reply*)) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 
 size_t FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct comm_point*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct comm_reply*) ; 
 int /*<<< orphan*/  FUNC15 (struct comm_point*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct comm_reply*) ; 

__attribute__((used)) static int
FUNC16(struct comm_point* c)
{
	/* the c->buffer has from position..limit new data we read. */
	/* the current chunk has length tcp_byte_count.
	 * once we read that read more chunk headers.
	 */
	size_t remainbufferlen;
	size_t got_now = FUNC7(c->buffer) - c->http_stored;
	if(c->tcp_byte_count <= got_now) {
		/* the chunk has completed (with perhaps some extra data
		 * from next chunk header and next chunk) */
		/* save too much info into temp buffer */
		size_t fraglen;
		struct comm_reply repinfo;
		c->http_stored = 0;
		FUNC12(c->buffer, (ssize_t)c->tcp_byte_count);
		FUNC4(c->http_temp);
		FUNC13(c->http_temp,
			FUNC5(c->buffer),
			FUNC9(c->buffer));
		FUNC6(c->http_temp);

		/* callback with this fragment */
		fraglen = FUNC8(c->buffer);
		FUNC11(c->buffer, 0);
		FUNC10(c->buffer, fraglen);
		repinfo = c->repinfo;
		FUNC0(FUNC1(c->callback));
		(void)(*c->callback)(c, c->cb_arg, NETEVENT_NOERROR, &repinfo);
		/* c->callback has to buffer_clear(). */

		/* is commpoint deleted? */
		if(!repinfo.c) {
			return 1;
		}
		/* copy waiting info */
		FUNC4(c->buffer);
		FUNC13(c->buffer,
			FUNC2(c->http_temp),
			FUNC9(c->http_temp));
		FUNC6(c->buffer);
		/* process end of chunk trailer header lines, until
		 * an empty line */
		c->http_in_chunk_headers = 3;
		/* process more data in buffer (if any) */
		return 2;
	}
	c->tcp_byte_count -= got_now;

	/* if we have the buffer space,
	 * read more data collected into the buffer */
	remainbufferlen = FUNC3(c->buffer) -
		FUNC7(c->buffer);
	if(remainbufferlen >= c->tcp_byte_count ||
		remainbufferlen >= 2048) {
		size_t total = FUNC7(c->buffer);
		FUNC4(c->buffer);
		FUNC11(c->buffer, total);
		c->http_stored = total;
		/* return and wait to read more */
		return 1;
	}
	
	/* callback of http reader for a new part of the data */
	c->http_stored = 0;
	FUNC11(c->buffer, 0);
	FUNC0(FUNC1(c->callback));
	(void)(*c->callback)(c, c->cb_arg, NETEVENT_NOERROR, NULL);
	/* c->callback has to buffer_clear(c->buffer). */
	/* return and wait to read more */
	return 1;
}