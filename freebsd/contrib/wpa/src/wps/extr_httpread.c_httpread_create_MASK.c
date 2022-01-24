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
struct httpread {int sd; void (* cb ) (struct httpread*,void*,int) ;int max_bytes; int timeout_seconds; void* cookie; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_TYPE_READ ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct httpread*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct httpread*) ; 
 int /*<<< orphan*/  FUNC2 (struct httpread*) ; 
 int /*<<< orphan*/  httpread_read_handler ; 
 int /*<<< orphan*/  httpread_timeout_handler ; 
 struct httpread* FUNC3 (int) ; 

struct httpread * FUNC4(
	int sd,	 /* descriptor of TCP socket to read from */
	void (*cb)(struct httpread *handle, void *cookie,
		   enum httpread_event e),  /* call on event */
	void *cookie,    /* pass to callback */
	int max_bytes,	  /* maximum body size else abort it */
	int timeout_seconds     /* 0; or total duration timeout period */
	)
{
	struct httpread *h = NULL;

	h = FUNC3(sizeof(*h));
	if (h == NULL)
		goto fail;
	h->sd = sd;
	h->cb = cb;
	h->cookie = cookie;
	h->max_bytes = max_bytes;
	h->timeout_seconds = timeout_seconds;

	if (timeout_seconds > 0 &&
	    FUNC1(timeout_seconds, 0,
				   httpread_timeout_handler, NULL, h)) {
		/* No way to recover (from malloc failure) */
		goto fail;
	}
	if (FUNC0(sd, EVENT_TYPE_READ, httpread_read_handler,
				NULL, h)) {
		/* No way to recover (from malloc failure) */
		goto fail;
	}
	return h;

fail:

	/* Error */
	FUNC2(h);
	return NULL;
}