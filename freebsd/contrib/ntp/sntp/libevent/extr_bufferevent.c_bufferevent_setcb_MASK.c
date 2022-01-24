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
struct bufferevent {void* cbarg; int /*<<< orphan*/  errorcb; void* writecb; void* readcb; } ;
typedef  int /*<<< orphan*/  bufferevent_event_cb ;
typedef  void* bufferevent_data_cb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 

void
FUNC2(struct bufferevent *bufev,
    bufferevent_data_cb readcb, bufferevent_data_cb writecb,
    bufferevent_event_cb eventcb, void *cbarg)
{
	FUNC0(bufev);

	bufev->readcb = readcb;
	bufev->writecb = writecb;
	bufev->errorcb = eventcb;

	bufev->cbarg = cbarg;
	FUNC1(bufev);
}