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
struct TYPE_2__ {size_t pos_in_chain; struct evbuffer_chain* chain; } ;
struct evbuffer_ptr {size_t pos; TYPE_1__ internal_; } ;
struct evbuffer_chain {size_t off; struct evbuffer_chain* next; } ;
struct evbuffer {struct evbuffer_chain* first; } ;
typedef  enum evbuffer_ptr_how { ____Placeholder_evbuffer_ptr_how } evbuffer_ptr_how ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evbuffer*) ; 
#define  EVBUFFER_PTR_ADD 129 
#define  EVBUFFER_PTR_SET 128 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 size_t EV_SIZE_MAX ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer_ptr*) ; 

int
FUNC4(struct evbuffer *buf, struct evbuffer_ptr *pos,
    size_t position, enum evbuffer_ptr_how how)
{
	size_t left = position;
	struct evbuffer_chain *chain = NULL;
	int result = 0;

	FUNC0(buf);

	switch (how) {
	case EVBUFFER_PTR_SET:
		chain = buf->first;
		pos->pos = position;
		position = 0;
		break;
	case EVBUFFER_PTR_ADD:
		/* this avoids iterating over all previous chains if
		   we just want to advance the position */
		if (pos->pos < 0 || EV_SIZE_MAX - position < (size_t)pos->pos) {
			FUNC1(buf);
			return -1;
		}
		chain = pos->internal_.chain;
		pos->pos += position;
		position = pos->internal_.pos_in_chain;
		break;
	}

	FUNC2(EV_SIZE_MAX - left >= position);
	while (chain && position + left >= chain->off) {
		left -= chain->off - position;
		chain = chain->next;
		position = 0;
	}
	if (chain) {
		pos->internal_.chain = chain;
		pos->internal_.pos_in_chain = position + left;
	} else if (left == 0) {
		/* The first byte in the (nonexistent) chain after the last chain */
		pos->internal_.chain = NULL;
		pos->internal_.pos_in_chain = 0;
	} else {
		FUNC3(pos);
		result = -1;
	}

	FUNC1(buf);

	return result;
}