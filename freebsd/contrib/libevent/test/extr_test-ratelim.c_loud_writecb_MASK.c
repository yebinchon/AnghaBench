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
struct client_state {int queued; } ;
struct bufferevent {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 struct evbuffer* FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*,char*,int) ; 
 int FUNC2 (struct evbuffer*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  weakrand_state ; 

__attribute__((used)) static void
FUNC5(struct bufferevent *bev, void *ctx)
{
	struct client_state *cs = ctx;
	struct evbuffer *output = FUNC0(bev);
	char buf[1024];
	int r = FUNC3(&weakrand_state);
	FUNC4(buf, r, sizeof(buf));
	while (FUNC2(output) < 8192) {
		FUNC1(output, buf, sizeof(buf));
		cs->queued += sizeof(buf);
	}
}