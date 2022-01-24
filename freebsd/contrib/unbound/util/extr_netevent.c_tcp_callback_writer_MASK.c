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
struct comm_point {scalar_t__ type; int tcp_is_reading; scalar_t__ tcp_req_info; scalar_t__ tcp_byte_count; scalar_t__ tcp_do_toggle_rw; int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct comm_point*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct comm_point*) ; 
 scalar_t__ comm_tcp ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void
FUNC5(struct comm_point* c)
{
	FUNC2(c->type == comm_tcp);
	FUNC3(c->buffer);
	if(c->tcp_do_toggle_rw)
		c->tcp_is_reading = 1;
	c->tcp_byte_count = 0;
	/* switch from listening(write) to listening(read) */
	if(c->tcp_req_info) {
		FUNC4(c->tcp_req_info);
	} else {
		FUNC1(c);
		FUNC0(c, -1, -1);
	}
}