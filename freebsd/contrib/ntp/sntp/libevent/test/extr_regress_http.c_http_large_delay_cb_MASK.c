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
struct timeval {int tv_usec; } ;
struct evhttp_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVREQ_HTTP_EOF ; 
 int /*<<< orphan*/  EV_TIMEOUT ; 
 int /*<<< orphan*/  delayed_client ; 
 int /*<<< orphan*/  FUNC0 (void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct evhttp_request*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct timeval*) ; 
 int /*<<< orphan*/  http_delay_reply ; 

__attribute__((used)) static void
FUNC3(struct evhttp_request *req, void *arg)
{
	struct timeval tv;
	FUNC2(&tv);
	tv.tv_usec = 500000;

	FUNC0(arg, -1, EV_TIMEOUT, http_delay_reply, req, &tv);
	FUNC1(delayed_client, EVREQ_HTTP_EOF);
}