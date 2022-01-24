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
struct evbuffer_cb_entry {int /*<<< orphan*/  flags; } ;
struct evbuffer {int dummy; } ;
typedef  int /*<<< orphan*/  ev_uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  EVBUFFER_CB_INTERNAL_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*) ; 

int
FUNC2(struct evbuffer *buffer,
		      struct evbuffer_cb_entry *cb, ev_uint32_t flags)
{
	/* the user isn't allowed to mess with these. */
	flags &= ~EVBUFFER_CB_INTERNAL_FLAGS;
	FUNC0(buffer);
	cb->flags &= ~flags;
	FUNC1(buffer);
	return 0;
}