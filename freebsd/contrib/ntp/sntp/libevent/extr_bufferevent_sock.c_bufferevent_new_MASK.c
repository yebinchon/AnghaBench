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
struct bufferevent {int dummy; } ;
typedef  int /*<<< orphan*/  evutil_socket_t ;
typedef  int /*<<< orphan*/  bufferevent_event_cb ;
typedef  int /*<<< orphan*/  bufferevent_data_cb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 struct bufferevent* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct bufferevent *
FUNC2(evutil_socket_t fd,
    bufferevent_data_cb readcb, bufferevent_data_cb writecb,
    bufferevent_event_cb eventcb, void *cbarg)
{
	struct bufferevent *bufev;

	if (!(bufev = FUNC1(NULL, fd, 0)))
		return NULL;

	FUNC0(bufev, readcb, writecb, eventcb, cbarg);

	return bufev;
}