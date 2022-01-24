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
struct evhttp_request {int major; int minor; scalar_t__ kind; int /*<<< orphan*/  output_headers; } ;
struct evbuffer {int dummy; } ;

/* Variables and functions */
 scalar_t__ EVHTTP_RESPONSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct evhttp_request*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct evhttp_request*,struct evbuffer*) ; 

void
FUNC4(struct evhttp_request *req, struct evbuffer *databuf)
{
	if (!req->major || !req->minor) {
		req->major = 1;
		req->minor = 1;
	}

	if (req->kind != EVHTTP_RESPONSE)
		FUNC2(req, 200, "OK");

	FUNC1(req->output_headers);
	FUNC0(req->output_headers, "Content-Type", "text/html");
	FUNC0(req->output_headers, "Connection", "close");

	FUNC3(req, databuf);
}