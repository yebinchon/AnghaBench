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
struct evhttp_request {int major; int minor; int flags; int /*<<< orphan*/  output_headers; int /*<<< orphan*/  input_headers; int /*<<< orphan*/  output_buffer; int /*<<< orphan*/  response_code_line; int /*<<< orphan*/  response_code; } ;
struct evhttp_connection {TYPE_1__* http_server; int /*<<< orphan*/  bufev; } ;
struct TYPE_2__ {char* default_content_type; } ;

/* Variables and functions */
 int EVHTTP_PROXY_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC10 (struct evhttp_request*) ; 

__attribute__((used)) static void
FUNC11(struct evhttp_connection *evcon,
    struct evhttp_request *req)
{
	int is_keepalive = FUNC6(req->input_headers);
	FUNC1(FUNC0(evcon->bufev),
	    "HTTP/%d.%d %d %s\r\n",
	    req->major, req->minor, req->response_code,
	    req->response_code_line);

	if (req->major == 1) {
		if (req->minor >= 1)
			FUNC8(req->output_headers);

		/*
		 * if the protocol is 1.0; and the connection was keep-alive
		 * we need to add a keep-alive header, too.
		 */
		if (req->minor == 0 && is_keepalive)
			FUNC3(req->output_headers,
			    "Connection", "keep-alive");

		if ((req->minor >= 1 || is_keepalive) &&
		    FUNC10(req)) {
			/*
			 * we need to add the content length if the
			 * user did not give it, this is required for
			 * persistent connections to work.
			 */
			FUNC7(
				req->output_headers,
				FUNC2(req->output_buffer));
		}
	}

	/* Potentially add headers for unidentified content. */
	if (FUNC10(req)) {
		if (FUNC4(req->output_headers,
			"Content-Type") == NULL
		    && evcon->http_server->default_content_type) {
			FUNC3(req->output_headers,
			    "Content-Type",
			    evcon->http_server->default_content_type);
		}
	}

	/* if the request asked for a close, we send a close, too */
	if (FUNC5(req->flags, req->input_headers)) {
		FUNC9(req->output_headers, "Connection");
		if (!(req->flags & EVHTTP_PROXY_REQUEST))
		    FUNC3(req->output_headers, "Connection", "close");
		FUNC9(req->output_headers, "Proxy-Connection");
	}
}