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
struct TYPE_2__ {scalar_t__ cb_obsolete; } ;
struct evbuffer_cb_entry {int /*<<< orphan*/  flags; TYPE_1__ cb; } ;
struct evbuffer {int /*<<< orphan*/  callbacks; } ;
typedef  scalar_t__ evbuffer_cb ;

/* Variables and functions */
 int /*<<< orphan*/  EVBUFFER_CB_OBSOLETE ; 
 int /*<<< orphan*/  FUNC0 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct evbuffer_cb_entry* FUNC3 (struct evbuffer*,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct evbuffer*) ; 

void
FUNC5(struct evbuffer *buffer, evbuffer_cb cb, void *cbarg)
{
	FUNC0(buffer);

	if (!FUNC2(&buffer->callbacks))
		FUNC4(buffer);

	if (cb) {
		struct evbuffer_cb_entry *ent =
		    FUNC3(buffer, NULL, cbarg);
		ent->cb.cb_obsolete = cb;
		ent->flags |= EVBUFFER_CB_OBSOLETE;
	}
	FUNC1(buffer);
}