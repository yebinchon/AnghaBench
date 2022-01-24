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
struct evhttp_request {int /*<<< orphan*/  evcon; } ;
struct evbuffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_FORMAT ; 
 int /*<<< orphan*/  FUNC0 (struct evbuffer*,int /*<<< orphan*/ ,int,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*) ; 
 struct evbuffer* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct evhttp_request*,int,char const*) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct evhttp_request*,struct evbuffer*) ; 

void
FUNC7(struct evhttp_request *req, int error, const char *reason)
{

#define ERR_FORMAT "<HTML><HEAD>\n" \
	    "<TITLE>%d %s</TITLE>\n" \
	    "</HEAD><BODY>\n" \
	    "<H1>%s</H1>\n" \
	    "</BODY></HTML>\n"

	struct evbuffer *buf = FUNC2();
	if (buf == NULL) {
		/* if we cannot allocate memory; we just drop the connection */
		FUNC3(req->evcon);
		return;
	}
	if (reason == NULL) {
		reason = FUNC5(error);
	}

	FUNC4(req, error, reason);

	FUNC0(buf, ERR_FORMAT, error, reason, reason);

	FUNC6(req, buf);

	FUNC1(buf);
#undef ERR_FORMAT
}