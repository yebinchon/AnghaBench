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
struct TYPE_2__ {int /*<<< orphan*/  cb_func; } ;
struct evbuffer_cb_entry {int /*<<< orphan*/  flags; void* cbarg; TYPE_1__ cb; } ;
struct evbuffer {int /*<<< orphan*/  callbacks; } ;
typedef  int /*<<< orphan*/  evbuffer_cb_func ;

/* Variables and functions */
 int /*<<< orphan*/  EVBUFFER_CB_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct evbuffer_cb_entry*,int /*<<< orphan*/ ) ; 
 struct evbuffer_cb_entry* FUNC3 (int,int) ; 
 int /*<<< orphan*/  next ; 

struct evbuffer_cb_entry *
FUNC4(struct evbuffer *buffer, evbuffer_cb_func cb, void *cbarg)
{
	struct evbuffer_cb_entry *e;
	if (! (e = FUNC3(1, sizeof(struct evbuffer_cb_entry))))
		return NULL;
	FUNC0(buffer);
	e->cb.cb_func = cb;
	e->cbarg = cbarg;
	e->flags = EVBUFFER_CB_ENABLED;
	FUNC2(&buffer->callbacks, e, next);
	FUNC1(buffer);
	return e;
}