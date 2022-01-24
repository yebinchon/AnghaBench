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
struct evbuffer_cb_info {scalar_t__ n_added; } ;
struct evbuffer {int dummy; } ;
struct bufferevent_filtered {int dummy; } ;
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BEV_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent_filtered*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*) ; 
 struct bufferevent* FUNC3 (struct bufferevent_filtered*) ; 

__attribute__((used)) static void
FUNC4(struct evbuffer *buf,
    const struct evbuffer_cb_info *cbinfo, void *arg)
{
	struct bufferevent_filtered *bevf = arg;
	struct bufferevent *bev = FUNC3(bevf);

	if (cbinfo->n_added) {
		int processed_any = 0;
		/* Somebody added more data to the output buffer. Try to
		 * process it, if we should. */
		FUNC2(bev);
		FUNC0(bevf, BEV_NORMAL, &processed_any);
		FUNC1(bev);
	}
}