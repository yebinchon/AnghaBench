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
struct comm_point {scalar_t__ type; scalar_t__ ssl_shake_state; int /*<<< orphan*/  buffer; int /*<<< orphan*/  http_is_chunked; scalar_t__ http_in_chunk_headers; scalar_t__ http_in_headers; scalar_t__ ssl; int /*<<< orphan*/  tcp_is_reading; } ;

/* Variables and functions */
 scalar_t__ comm_http ; 
 scalar_t__ comm_ssl_shake_none ; 
 int FUNC0 (struct comm_point*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct comm_point*) ; 
 int FUNC4 (struct comm_point*) ; 
 int /*<<< orphan*/  FUNC5 (struct comm_point*) ; 
 int /*<<< orphan*/  FUNC6 (int,struct comm_point*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct comm_point*) ; 
 int /*<<< orphan*/  FUNC11 (struct comm_point*) ; 

__attribute__((used)) static int
FUNC12(int fd, struct comm_point* c)
{
	FUNC7(c->type == comm_http);
	FUNC7(fd != -1);

	/* if we are in ssl handshake, handle SSL handshake */
#ifdef HAVE_SSL
	if(c->ssl && c->ssl_shake_state != comm_ssl_shake_none) {
		if(!ssl_handshake(c))
			return 0;
		if(c->ssl_shake_state != comm_ssl_shake_none)
			return 1;
	}
#endif /* HAVE_SSL */

	if(!c->tcp_is_reading)
		return 1;
	/* read more data */
	if(c->ssl) {
		if(!FUNC11(c))
			return 0;
	} else {
		if(!FUNC6(fd, c))
			return 0;
	}

	FUNC8(c->buffer);
	while(FUNC9(c->buffer) > 0) {
		/* if we are reading headers, read more headers */
		if(c->http_in_headers || c->http_in_chunk_headers) {
			/* if header is done, process the header */
			if(!FUNC1(c->buffer)) {
				/* copy remaining data to front of buffer
				 * and set rest for writing into it */
				FUNC2(c->buffer);
				/* return and wait to read more */
				return 1;
			}
			if(!c->http_in_chunk_headers) {
				/* process initial headers */
				if(!FUNC5(c))
					return 0;
			} else {
				/* process chunk headers */
				int r = FUNC4(c);
				if(r == 0) return 0;
				if(r == 2) return 1; /* done */
				/* r == 1, continue */
			}
			/* see if we have more to process */
			continue;
		}

		if(!c->http_is_chunked) {
			/* if we are reading nonchunks, process that*/
			return FUNC3(c);
		} else {
			/* if we are reading chunks, read the chunk */
			int r = FUNC0(c);
			if(r == 0) return 0;
			if(r == 1) return 1;
			continue;
		}
	}
	/* broke out of the loop; could not process header instead need
	 * to read more */
	/* moveover any remaining data and read more data */
	FUNC2(c->buffer);
	/* return and wait to read more */
	return 1;
}