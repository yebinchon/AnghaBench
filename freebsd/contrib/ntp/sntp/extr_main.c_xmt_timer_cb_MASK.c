#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* spkt; } ;
typedef  TYPE_2__ xmt_ctx ;
typedef  int /*<<< orphan*/  u_int ;
struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
typedef  void* evutil_socket_t ;
struct TYPE_10__ {scalar_t__ sched; } ;
struct TYPE_8__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 short EV_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  base ; 
 int /*<<< orphan*/  ev_xmt_timer ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct timeval*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 struct timeval gap ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct timeval*) ; 
 int /*<<< orphan*/  link ; 
 scalar_t__ shutting_down ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 TYPE_3__* xmt_q ; 

void
FUNC9(
	evutil_socket_t	fd,
	short		what,
	void *		ctx
	)
{
	struct timeval	start_cb;
	struct timeval	delay;
	xmt_ctx *	x;

	FUNC3(fd);
	FUNC3(ctx);
	FUNC0(EV_TIMEOUT == what);

	if (NULL == xmt_q || shutting_down)
		return;
	FUNC6(base, &start_cb);
	if (xmt_q->sched <= start_cb.tv_sec) {
		FUNC2(x, xmt_q, link);
		FUNC1(2, ("xmt_timer_cb: at .%6.6u -> %s\n",
			  (u_int)start_cb.tv_usec, FUNC7(&x->spkt->addr)));
		FUNC8(x);
		FUNC5(x);
		if (NULL == xmt_q)
			return;
	}
	if (xmt_q->sched <= start_cb.tv_sec) {
		FUNC4(ev_xmt_timer, &gap);
		FUNC1(2, ("xmt_timer_cb: at .%6.6u gap %6.6u\n",
			  (u_int)start_cb.tv_usec,
			  (u_int)gap.tv_usec));
	} else {
		delay.tv_sec = xmt_q->sched - start_cb.tv_sec;
		delay.tv_usec = 0;
		FUNC4(ev_xmt_timer, &delay);
		FUNC1(2, ("xmt_timer_cb: at .%6.6u next %ld seconds\n",
			  (u_int)start_cb.tv_usec,
			  (long)delay.tv_sec));
	}
}