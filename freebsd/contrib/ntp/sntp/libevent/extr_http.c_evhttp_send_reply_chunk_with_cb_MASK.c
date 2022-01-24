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
struct evhttp_request {scalar_t__ chunked; struct evhttp_connection* evcon; } ;
struct evhttp_connection {int /*<<< orphan*/  bufev; } ;
struct evbuffer {int dummy; } ;

/* Variables and functions */
 struct evbuffer* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer*,struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer*,char*,unsigned int) ; 
 scalar_t__ FUNC4 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct evhttp_connection*,void (*) (struct evhttp_connection*,void*),void*) ; 

void
FUNC7(struct evhttp_request *req, struct evbuffer *databuf,
    void (*cb)(struct evhttp_connection *, void *), void *arg)
{
	struct evhttp_connection *evcon = req->evcon;
	struct evbuffer *output;

	if (evcon == NULL)
		return;

	output = FUNC0(evcon->bufev);

	if (FUNC4(databuf) == 0)
		return;
	if (!FUNC5(req))
		return;
	if (req->chunked) {
		FUNC3(output, "%x\r\n",
				    (unsigned)FUNC4(databuf));
	}
	FUNC2(output, databuf);
	if (req->chunked) {
		FUNC1(output, "\r\n", 2);
	}
	FUNC6(evcon, cb, arg);
}