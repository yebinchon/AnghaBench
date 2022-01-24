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

/* Variables and functions */
 short BEV_EVENT_EOF ; 
 short BEV_EVENT_ERROR ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bufferevent*) ; 
 unsigned long FUNC5 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC6 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC7 (struct bufferevent*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (struct bufferevent*,short,void*),int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  close_on_finished_writecb ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (struct bufferevent*,void*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC12(struct bufferevent *bev, short what, void *ctx)
{
	struct bufferevent *partner = ctx;

	if (what & (BEV_EVENT_EOF|BEV_EVENT_ERROR)) {
		if (what & BEV_EVENT_ERROR) {
			unsigned long err;
			while ((err = (FUNC5(bev)))) {
				const char *msg = (const char*)
				    FUNC2(err);
				const char *lib = (const char*)
				    FUNC1(err);
				const char *func = (const char*)
				    FUNC0(err);
				FUNC9(stderr,
				    "%s in %s %s\n", msg, lib, func);
			}
			if (errno)
				FUNC10("connection error");
		}

		if (partner) {
			/* Flush all pending data */
			FUNC11(bev, ctx);

			if (FUNC8(
				    FUNC6(partner))) {
				/* We still have to flush data from the other
				 * side, but when that's done, close the other
				 * side. */
				FUNC7(partner,
				    NULL, close_on_finished_writecb,
				    eventcb, NULL);
				FUNC3(partner, EV_READ);
			} else {
				/* We have nothing left to say to the other
				 * side; close it. */
				FUNC4(partner);
			}
		}
		FUNC4(bev);
	}
}