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
struct tac_msg {int* session_id; } ;

/* Variables and functions */
 int FUNC0 () ; 

__attribute__((used)) static void
FUNC1(struct tac_msg *msg)
{
	int r;

	r = FUNC0();
	msg->session_id[0] = r >> 8;
	msg->session_id[1] = r;
	r = FUNC0();
	msg->session_id[2] = r >> 8;
	msg->session_id[3] = r;
}