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
 int /*<<< orphan*/  FUNC0 (struct evhttp_request*,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct evhttp_request*,struct evbuffer*) ; 

void
FUNC2(struct evhttp_request *req, int code, const char *reason,
    struct evbuffer *databuf)
{
	FUNC0(req, code, reason);

	FUNC1(req, databuf);
}