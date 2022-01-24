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
struct comm_point {int http_in_chunk_headers; scalar_t__ tcp_byte_count; int /*<<< orphan*/  buffer; int /*<<< orphan*/  cb_arg; int /*<<< orphan*/  (* callback ) (struct comm_point*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  NETEVENT_DONE ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) (struct comm_point*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *)) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC8 (struct comm_point*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int
FUNC10(struct comm_point* c)
{
	char* line = FUNC2(c->buffer);
	if(!line) return 1;
	if(c->http_in_chunk_headers == 3) {
		FUNC9(VERB_ALGO, "http chunk trailer: %s", line);
		/* are we done ? */
		if(line[0] == 0 && c->tcp_byte_count == 0) {
			/* callback of http reader when NETEVENT_DONE,
			 * end of data, with no data in buffer */
			FUNC6(c->buffer, 0);
			FUNC5(c->buffer, 0);
			FUNC0(FUNC1(c->callback));
			(void)(*c->callback)(c, c->cb_arg, NETEVENT_DONE, NULL);
			/* return that we are done */
			return 2;
		}
		if(line[0] == 0) {
			/* continue with header of the next chunk */
			c->http_in_chunk_headers = 1;
			/* remove header text from front of buffer */
			FUNC3(c->buffer);
			FUNC4(c->buffer);
			return 1;
		}
		/* ignore further trail headers */
		return 1;
	}
	FUNC9(VERB_ALGO, "http chunk header: %s", line);
	if(c->http_in_chunk_headers == 1) {
		/* read chunked start line */
		char* end = NULL;
		c->tcp_byte_count = (size_t)FUNC7(line, &end, 16);
		if(end == line)
			return 0;
		c->http_in_chunk_headers = 0;
		/* remove header text from front of buffer */
		FUNC3(c->buffer);
		FUNC4(c->buffer);
		if(c->tcp_byte_count == 0) {
			/* done with chunks, process chunk_trailer lines */
			c->http_in_chunk_headers = 3;
		}
		return 1;
	}
	/* ignore other headers */
	return 1;
}