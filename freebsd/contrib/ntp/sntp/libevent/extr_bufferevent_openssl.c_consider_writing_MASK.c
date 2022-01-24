#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct event_watermark {scalar_t__ high; } ;
struct evbuffer {int dummy; } ;
struct bufferevent {int enabled; int /*<<< orphan*/  ev_write; struct evbuffer* output; } ;
struct TYPE_4__ {struct bufferevent bev; scalar_t__ write_suspended; } ;
struct bufferevent_openssl {TYPE_2__ bev; TYPE_1__* underlying; scalar_t__ read_blocked_on_write; } ;
struct TYPE_3__ {struct event_watermark wm_write; struct evbuffer* output; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_READ ; 
 int EV_WRITE ; 
 int OP_BLOCKED ; 
 int OP_ERR ; 
 int OP_MADE_PROGRESS ; 
 int WRITE_FRAME ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bufferevent_openssl*,int) ; 
 int FUNC2 (struct bufferevent_openssl*,int) ; 
 scalar_t__ FUNC3 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct bufferevent_openssl *bev_ssl)
{
	int r;
	struct evbuffer *output = bev_ssl->bev.bev.output;
	struct evbuffer *target = NULL;
	struct event_watermark *wm = NULL;

	while (bev_ssl->read_blocked_on_write) {
		r = FUNC1(bev_ssl, 1024); /* XXXX 1024 is a hack */
		if (r & OP_MADE_PROGRESS) {
			struct bufferevent *bev = &bev_ssl->bev.bev;

			FUNC0(bev, EV_READ, 0);
		}
		if (r & (OP_ERR|OP_BLOCKED))
			break;
	}
	if (bev_ssl->read_blocked_on_write)
		return;
	if (bev_ssl->underlying) {
		target = bev_ssl->underlying->output;
		wm = &bev_ssl->underlying->wm_write;
	}
	while ((bev_ssl->bev.bev.enabled & EV_WRITE) &&
	    (! bev_ssl->bev.write_suspended) &&
	    FUNC3(output) &&
	    (!target || (! wm->high || FUNC3(target) < wm->high))) {
		int n_to_write;
		if (wm && wm->high)
			n_to_write = wm->high - FUNC3(target);
		else
			n_to_write = WRITE_FRAME;
		r = FUNC2(bev_ssl, n_to_write);
		if (r & (OP_BLOCKED|OP_ERR))
			break;
	}

	if (!bev_ssl->underlying) {
		if (FUNC3(output) == 0) {
			FUNC4(&bev_ssl->bev.bev.ev_write);
		} else if (bev_ssl->bev.write_suspended ||
		    !(bev_ssl->bev.bev.enabled & EV_WRITE)) {
			/* Should be redundant, but let's avoid busy-looping */
			FUNC4(&bev_ssl->bev.bev.ev_write);
		}
	}
}