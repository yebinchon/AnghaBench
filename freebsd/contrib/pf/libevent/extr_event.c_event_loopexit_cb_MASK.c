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
struct event_base {int event_gotterm; } ;

/* Variables and functions */

__attribute__((used)) static void
FUNC0(int fd, short what, void *arg)
{
	struct event_base *base = arg;
	base->event_gotterm = 1;
}