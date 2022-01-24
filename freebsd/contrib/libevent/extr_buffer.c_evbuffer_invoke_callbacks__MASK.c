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
struct evbuffer {scalar_t__ parent; int /*<<< orphan*/  deferred; int /*<<< orphan*/  cb_queue; scalar_t__ deferred_cbs; scalar_t__ n_del_for_cb; scalar_t__ n_add_for_cb; int /*<<< orphan*/  callbacks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct evbuffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC6(struct evbuffer *buffer)
{
	if (FUNC1(&buffer->callbacks)) {
		buffer->n_add_for_cb = buffer->n_del_for_cb = 0;
		return;
	}

	if (buffer->deferred_cbs) {
		if (FUNC5(buffer->cb_queue, &buffer->deferred)) {
			FUNC3(buffer);
			if (buffer->parent)
				FUNC2(buffer->parent);
		}
		FUNC0(buffer);
	}

	FUNC4(buffer, 0);
}