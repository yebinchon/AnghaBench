#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ctx_query {int msg_security; TYPE_2__* w; TYPE_3__* res; int /*<<< orphan*/  msg; int /*<<< orphan*/  msg_len; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  enum sec_status { ____Placeholder_sec_status } sec_status ;
struct TYPE_6__ {int was_ratelimited; int rcode; int /*<<< orphan*/  why_bogus; } ;
struct TYPE_5__ {TYPE_1__* env; } ;
struct TYPE_4__ {int /*<<< orphan*/  scratch; } ;

/* Variables and functions */
 int LDNS_RCODE_SERVFAIL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void
FUNC5(struct ctx_query* q, int rcode, sldns_buffer* buf, 
	enum sec_status s, char* why_bogus, int was_ratelimited)
{
	q->res->was_ratelimited = was_ratelimited;
	if(why_bogus)
		q->res->why_bogus = FUNC4(why_bogus);
	if(rcode != 0) {
		q->res->rcode = rcode;
		q->msg_security = s;
		return;
	}

	q->res->rcode = LDNS_RCODE_SERVFAIL;
	q->msg_security = 0;
	q->msg = FUNC1(FUNC2(buf), FUNC3(buf));
	q->msg_len = FUNC3(buf);
	if(!q->msg) {
		return; /* the error is in the rcode */
	}

	/* canonname and results */
	q->msg_security = s;
	FUNC0(q->res, buf, q->w->env->scratch, s);
}