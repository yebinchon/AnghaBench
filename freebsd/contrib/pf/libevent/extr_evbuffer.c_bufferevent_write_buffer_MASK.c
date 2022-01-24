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
struct evbuffer {int /*<<< orphan*/  off; int /*<<< orphan*/  buffer; } ;
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bufferevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*,int /*<<< orphan*/ ) ; 

int
FUNC2(struct bufferevent *bufev, struct evbuffer *buf)
{
	int res;

	res = FUNC0(bufev, buf->buffer, buf->off);
	if (res != -1)
		FUNC1(buf, buf->off);

	return (res);
}