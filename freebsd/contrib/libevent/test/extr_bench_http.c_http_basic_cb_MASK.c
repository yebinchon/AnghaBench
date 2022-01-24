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
 int /*<<< orphan*/  content ; 
 int /*<<< orphan*/  content_len ; 
 int /*<<< orphan*/  FUNC0 (struct evbuffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*) ; 
 struct evbuffer* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct evhttp_request*,int /*<<< orphan*/ ,char*,struct evbuffer*) ; 

__attribute__((used)) static void
FUNC4(struct evhttp_request *req, void *arg)
{
	struct evbuffer *evb = FUNC2();

	FUNC0(evb, content, content_len);

	/* allow sending of an empty reply */
	FUNC3(req, HTTP_OK, "Everything is fine", evb);

	FUNC1(evb);
}