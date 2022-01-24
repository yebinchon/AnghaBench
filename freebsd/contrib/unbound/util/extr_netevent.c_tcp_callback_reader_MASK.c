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
struct comm_point {scalar_t__ type; int /*<<< orphan*/  tcp_timeout_msec; int /*<<< orphan*/  repinfo; int /*<<< orphan*/  cb_arg; scalar_t__ (* callback ) (struct comm_point*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;scalar_t__ tcp_req_info; scalar_t__ tcp_byte_count; scalar_t__ tcp_is_reading; scalar_t__ tcp_do_toggle_rw; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETEVENT_NOERROR ; 
 scalar_t__ comm_local ; 
 int /*<<< orphan*/  FUNC0 (struct comm_point*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct comm_point*) ; 
 scalar_t__ comm_tcp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__ (*) (struct comm_point*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct comm_point*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static void
FUNC8(struct comm_point* c)
{
	FUNC4(c->type == comm_tcp || c->type == comm_local);
	FUNC5(c->buffer);
	if(c->tcp_do_toggle_rw)
		c->tcp_is_reading = 0;
	c->tcp_byte_count = 0;
	if(c->tcp_req_info) {
		FUNC7(c->tcp_req_info);
	} else {
		if(c->type == comm_tcp)
			FUNC1(c);
		FUNC2(FUNC3(c->callback));
		if( (*c->callback)(c, c->cb_arg, NETEVENT_NOERROR, &c->repinfo) ) {
			FUNC0(c, -1, c->tcp_timeout_msec);
		}
	}
}