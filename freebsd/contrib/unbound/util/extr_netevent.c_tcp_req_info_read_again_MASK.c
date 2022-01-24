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
struct comm_point {int /*<<< orphan*/  cb_arg; int /*<<< orphan*/  (* callback ) (struct comm_point*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;int /*<<< orphan*/  tcp_do_close; scalar_t__ tcp_is_reading; TYPE_1__* tcp_req_info; } ;
struct TYPE_2__ {scalar_t__ read_again; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETEVENT_CLOSED ; 
 int FUNC0 (int,struct comm_point*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,struct comm_point*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  (*) (struct comm_point*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC4 (struct comm_point*) ; 
 int /*<<< orphan*/  FUNC5 (struct comm_point*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(int fd, struct comm_point* c)
{
	while(c->tcp_req_info->read_again) {
		int r;
		c->tcp_req_info->read_again = 0;
		if(c->tcp_is_reading)
			r = FUNC0(fd, c, 0);
		else 	r = FUNC1(fd, c);
		if(!r) {
			FUNC4(c);
			if(!c->tcp_do_close) {
				FUNC2(FUNC3(
					c->callback));
				(void)(*c->callback)(c, c->cb_arg, 
					NETEVENT_CLOSED, NULL);
			}
			return;
		}
	}
}