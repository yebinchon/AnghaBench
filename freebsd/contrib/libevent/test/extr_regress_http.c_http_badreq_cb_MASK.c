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
struct evhttp_request {int dummy; } ;
struct evbuffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HTTP_OK ; 
 int /*<<< orphan*/  FUNC0 (struct evbuffer*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*) ; 
 struct evbuffer* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct evhttp_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct evhttp_request*,int /*<<< orphan*/ ,char*,struct evbuffer*) ; 

__attribute__((used)) static void
FUNC6(struct evhttp_request *req, void *arg)
{
	struct evbuffer *buf = FUNC2();

	FUNC3(FUNC4(req), "Content-Type", "text/xml; charset=UTF-8");
	FUNC0(buf, "Hello, %s!", "127.0.0.1");

	FUNC5(req, HTTP_OK, "OK", buf);
	FUNC1(buf);
}