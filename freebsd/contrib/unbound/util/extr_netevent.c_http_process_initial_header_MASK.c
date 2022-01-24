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
struct comm_point {int http_is_chunked; size_t tcp_byte_count; int http_in_chunk_headers; int /*<<< orphan*/  buffer; scalar_t__ http_in_headers; } ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 scalar_t__ FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int
FUNC6(struct comm_point* c)
{
	char* line = FUNC1(c->buffer);
	if(!line) return 1;
	FUNC5(VERB_ALGO, "http header: %s", line);
	if(FUNC4(line, "HTTP/1.1 ", 9) == 0) {
		/* check returncode */
		if(line[9] != '2') {
			FUNC5(VERB_ALGO, "http bad status %s", line+9);
			return 0;
		}
	} else if(FUNC4(line, "Content-Length: ", 16) == 0) {
		if(!c->http_is_chunked)
			c->tcp_byte_count = (size_t)FUNC0(line+16);
	} else if(FUNC4(line, "Transfer-Encoding: chunked", 19+7) == 0) {
		c->tcp_byte_count = 0;
		c->http_is_chunked = 1;
	} else if(line[0] == 0) {
		/* end of initial headers */
		c->http_in_headers = 0;
		if(c->http_is_chunked)
			c->http_in_chunk_headers = 1;
		/* remove header text from front of buffer
		 * the buffer is going to be used to return the data segment
		 * itself and we don't want the header to get returned
		 * prepended with it */
		FUNC2(c->buffer);
		FUNC3(c->buffer);
		return 1;
	}
	/* ignore other headers */
	return 1;
}