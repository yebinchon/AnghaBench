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
struct radius_msg {scalar_t__* attr_pos; int /*<<< orphan*/  buf; } ;
struct radius_attr_hdr {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct radius_attr_hdr *
FUNC1(struct radius_msg *msg, int idx)
{
	return (struct radius_attr_hdr *)
		(FUNC0(msg->buf) + msg->attr_pos[idx]);
}