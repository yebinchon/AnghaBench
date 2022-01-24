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
struct comm_point {scalar_t__ type; int /*<<< orphan*/  cb_arg; int /*<<< orphan*/  (* callback ) (struct comm_point*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  tcp_do_close; TYPE_1__* ev; } ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETEVENT_CLOSED ; 
 int /*<<< orphan*/  NETEVENT_TIMEOUT ; 
 short UB_EV_READ ; 
 short UB_EV_TIMEOUT ; 
 short UB_EV_WRITE ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 scalar_t__ comm_http ; 
 int /*<<< orphan*/  FUNC0 (int,struct comm_point*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct comm_point*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  (*) (struct comm_point*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,short) ; 
 int /*<<< orphan*/  FUNC6 (struct comm_point*) ; 
 int /*<<< orphan*/  FUNC7 (struct comm_point*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct comm_point*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct comm_point*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 

void 
FUNC12(int fd, short event, void* arg)
{
	struct comm_point* c = (struct comm_point*)arg;
	FUNC4(c->type == comm_http);
	FUNC10(c->ev->base);

	if(event&UB_EV_TIMEOUT) {
		FUNC11(VERB_QUERY, "http took too long, dropped");
		FUNC6(c);
		if(!c->tcp_do_close) {
			FUNC2(FUNC3(c->callback));
			(void)(*c->callback)(c, c->cb_arg,
				NETEVENT_TIMEOUT, NULL);
		}
		return;
	}
	if(event&UB_EV_READ) {
		if(!FUNC0(fd, c)) {
			FUNC6(c);
			if(!c->tcp_do_close) {
				FUNC2(FUNC3(
					c->callback));
				(void)(*c->callback)(c, c->cb_arg, 
					NETEVENT_CLOSED, NULL);
			}
		}
		return;
	}
	if(event&UB_EV_WRITE) {
		if(!FUNC1(fd, c)) {
			FUNC6(c);
			if(!c->tcp_do_close) {
				FUNC2(FUNC3(
					c->callback));
				(void)(*c->callback)(c, c->cb_arg, 
					NETEVENT_CLOSED, NULL);
			}
		}
		return;
	}
	FUNC5("Ignored event %d for httphdl.", event);
}