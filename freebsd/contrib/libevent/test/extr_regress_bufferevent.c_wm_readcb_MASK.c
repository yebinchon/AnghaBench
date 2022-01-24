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
struct bufferevent {int /*<<< orphan*/  input; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*,struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct evbuffer* FUNC5 () ; 
 int /*<<< orphan*/  test_ok ; 

__attribute__((used)) static void
FUNC6(struct bufferevent *bev, void *arg)
{
	struct evbuffer *evbuf = FUNC5();
	int len = (int)FUNC4(bev->input);
	static int nread;

	FUNC0(len >= 10 && len <= 20);

	FUNC0(evbuf != NULL);

	/* gratuitous test of bufferevent_read_buffer */
	FUNC2(bev, evbuf);

	nread += len;
	if (nread == 65000) {
		FUNC1(bev, EV_READ);
		test_ok++;
	}

	FUNC3(evbuf);
}