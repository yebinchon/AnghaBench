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
struct evhttp_request {int type; int /*<<< orphan*/  evcon; int /*<<< orphan*/ * uri; int /*<<< orphan*/  response_code; scalar_t__ userdone; } ;
struct evhttp_cb {int /*<<< orphan*/  cbarg; int /*<<< orphan*/  (* cb ) (struct evhttp_request*,int /*<<< orphan*/ ) ;} ;
struct evhttp {int allowed_methods; int /*<<< orphan*/  gencbarg; int /*<<< orphan*/  (* gencb ) (struct evhttp_request*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  callbacks; } ;
struct evbuffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_FORMAT ; 
 int /*<<< orphan*/  HTTP_NOTFOUND ; 
 int /*<<< orphan*/  HTTP_NOTIMPLEMENTED ; 
 int /*<<< orphan*/  FUNC0 (struct evbuffer*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*) ; 
 struct evbuffer* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct evhttp_cb* FUNC5 (int /*<<< orphan*/ *,struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct evhttp*,struct evhttp**,char const*) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC9 (struct evhttp_request*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct evhttp_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct evhttp_request*,struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (struct evhttp_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct evhttp_request*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(struct evhttp_request *req, void *arg)
{
	struct evhttp *http = arg;
	struct evhttp_cb *cb = NULL;
	const char *hostname;

	/* we have a new request on which the user needs to take action */
	req->userdone = 0;

	if (req->type == 0 || req->uri == NULL) {
		FUNC10(req, req->response_code, NULL);
		return;
	}

	if ((http->allowed_methods & req->type) == 0) {
		FUNC3(("Rejecting disallowed method %x (allowed: %x)\n",
			(unsigned)req->type, (unsigned)http->allowed_methods));
		FUNC10(req, HTTP_NOTIMPLEMENTED, NULL);
		return;
	}

	/* handle potential virtual hosts */
	hostname = FUNC8(req);
	if (hostname != NULL) {
		FUNC6(http, &http, hostname);
	}

	if ((cb = FUNC5(&http->callbacks, req)) != NULL) {
		(*cb->cb)(req, cb->cbarg);
		return;
	}

	/* Generic call back */
	if (http->gencb) {
		(*http->gencb)(req, http->gencbarg);
		return;
	} else {
		/* We need to send a 404 here */
#define ERR_FORMAT "<html><head>" \
		    "<title>404 Not Found</title>" \
		    "</head><body>" \
		    "<h1>Not Found</h1>" \
		    "<p>The requested URL %s was not found on this server.</p>"\
		    "</body></html>\n"

		char *escaped_html;
		struct evbuffer *buf;

		if ((escaped_html = FUNC7(req->uri)) == NULL) {
			FUNC4(req->evcon);
			return;
		}

		if ((buf = FUNC2()) == NULL) {
			FUNC12(escaped_html);
			FUNC4(req->evcon);
			return;
		}

		FUNC9(req, HTTP_NOTFOUND, "Not Found");

		FUNC0(buf, ERR_FORMAT, escaped_html);

		FUNC12(escaped_html);

		FUNC11(req, buf);

		FUNC1(buf);
#undef ERR_FORMAT
	}
}