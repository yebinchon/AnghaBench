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
struct waiting_tcp {int pkt_len; scalar_t__ timer; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 

__attribute__((used)) static size_t
FUNC1(struct waiting_tcp* w)
{
	size_t s;
	if(!w) return 0;
	s = sizeof(*w) + w->pkt_len;
	if(w->timer)
		s += FUNC0(w->timer);
	return s;
}