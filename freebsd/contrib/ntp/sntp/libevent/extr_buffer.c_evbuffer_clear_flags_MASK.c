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
struct evbuffer {int /*<<< orphan*/  flags; } ;
typedef  scalar_t__ ev_uint64_t ;
typedef  int /*<<< orphan*/  ev_uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*) ; 

int
FUNC2(struct evbuffer *buf, ev_uint64_t flags)
{
	FUNC0(buf);
	buf->flags &= ~(ev_uint32_t)flags;
	FUNC1(buf);
	return 0;
}