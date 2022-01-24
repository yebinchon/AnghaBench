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
struct client_state {size_t received; } ;
struct bufferevent {int dummy; } ;

/* Variables and functions */
 struct evbuffer* FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*,size_t) ; 
 size_t FUNC2 (struct evbuffer*) ; 

__attribute__((used)) static void
FUNC3(struct bufferevent *bev, void *ctx)
{
	struct client_state *cs = ctx;
	struct evbuffer *input = FUNC0(bev);
	size_t len = FUNC2(input);
	FUNC1(input, len);
	cs->received += len;
}