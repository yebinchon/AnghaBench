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
struct event_base {scalar_t__ virtual_event_count; scalar_t__ event_count; } ;

/* Variables and functions */

__attribute__((used)) static int
FUNC0(struct event_base *base)
{
	/* Caller must hold th_base_lock */
	return (base->virtual_event_count > 0 || base->event_count > 0);
}