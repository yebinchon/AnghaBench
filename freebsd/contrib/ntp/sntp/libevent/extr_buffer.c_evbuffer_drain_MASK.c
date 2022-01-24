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
struct evbuffer_chain {size_t off; size_t misalign; struct evbuffer_chain* next; } ;
struct evbuffer {size_t total_len; size_t n_del_for_cb; struct evbuffer_chain* first; struct evbuffer_chain** last_with_datap; scalar_t__ freeze_start; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct evbuffer_chain*) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct evbuffer_chain*) ; 
 int /*<<< orphan*/  FUNC7 (struct evbuffer*) ; 

int
FUNC8(struct evbuffer *buf, size_t len)
{
	struct evbuffer_chain *chain, *next;
	size_t remaining, old_len;
	int result = 0;

	FUNC1(buf);
	old_len = buf->total_len;

	if (old_len == 0)
		goto done;

	if (buf->freeze_start) {
		result = -1;
		goto done;
	}

	if (len >= old_len && !FUNC4(buf)) {
		len = old_len;
		for (chain = buf->first; chain != NULL; chain = next) {
			next = chain->next;
			FUNC6(chain);
		}

		FUNC5(buf);
	} else {
		if (len >= old_len)
			len = old_len;

		buf->total_len -= len;
		remaining = len;
		for (chain = buf->first;
		     remaining >= chain->off;
		     chain = next) {
			next = chain->next;
			remaining -= chain->off;

			if (chain == *buf->last_with_datap) {
				buf->last_with_datap = &buf->first;
			}
			if (&chain->next == buf->last_with_datap)
				buf->last_with_datap = &buf->first;

			if (FUNC0(chain)) {
				FUNC3(remaining == 0);
				chain->misalign += chain->off;
				chain->off = 0;
				break;
			} else
				FUNC6(chain);
		}

		buf->first = chain;
		FUNC3(chain && remaining <= chain->off);
		chain->misalign += remaining;
		chain->off -= remaining;
	}

	buf->n_del_for_cb += len;
	/* Tell someone about changes in this buffer */
	FUNC7(buf);

done:
	FUNC2(buf);
	return result;
}