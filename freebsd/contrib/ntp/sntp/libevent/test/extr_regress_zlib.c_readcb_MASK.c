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
struct evbuffer {int dummy; } ;
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 struct evbuffer* FUNC2 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*,struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct evbuffer*) ; 
 int FUNC5 (struct evbuffer*) ; 
 struct evbuffer* FUNC6 () ; 
 int /*<<< orphan*/  readcb_finished ; 

__attribute__((used)) static void
FUNC7(struct bufferevent *bev, void *arg)
{
	if (FUNC5(FUNC2(bev)) == 8333) {
		struct evbuffer *evbuf = FUNC6();
		FUNC0(evbuf != NULL);

		/* gratuitous test of bufferevent_read_buffer */
		FUNC3(bev, evbuf);

		FUNC1(bev, EV_READ);

		if (FUNC5(evbuf) == 8333) {
			++readcb_finished;
		}

		FUNC4(evbuf);
	}
}