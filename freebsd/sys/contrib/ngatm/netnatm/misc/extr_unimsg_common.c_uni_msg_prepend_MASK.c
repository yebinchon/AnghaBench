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
struct uni_msg {size_t b_rptr; size_t b_wptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct uni_msg*,size_t) ; 
 size_t FUNC2 (struct uni_msg*) ; 
 int /*<<< orphan*/  FUNC3 (struct uni_msg*) ; 

int
FUNC4(struct uni_msg *msg, size_t len)
{
	size_t need;

	if (FUNC2(msg) >= len) {
		msg->b_rptr -= len;
		return (0);
	}
	need = len - FUNC2(msg);
	if (FUNC1(msg, need))
		return (-1);
	FUNC0(msg->b_rptr + need, msg->b_rptr, FUNC3(msg));
	msg->b_rptr += need - len;
	msg->b_wptr += need;
	return (0);
}