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
struct evdns_server_request {TYPE_1__** questions; int /*<<< orphan*/  nquestions; } ;
typedef  int ev_uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  DNS_ERR_REFUSED ; 
 int /*<<< orphan*/  FUNC0 (struct evdns_server_request*,int /*<<< orphan*/ ,int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct evdns_server_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct evdns_server_request *req, void *arg)
{
	ev_uint32_t answer = 0x7f000001;
	FUNC2(req->nquestions);
	FUNC0(req, req->questions[0]->name, 1,
	    &answer, 100);
	FUNC1(req, 0);
	return;
end:
	FUNC1(req, DNS_ERR_REFUSED);
}