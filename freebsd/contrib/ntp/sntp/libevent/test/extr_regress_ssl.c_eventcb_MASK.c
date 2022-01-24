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
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 short BEV_EVENT_CONNECTED ; 
 short BEV_EVENT_EOF ; 
 short BEV_EVENT_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*) ; 
 int /*<<< orphan*/ * FUNC3 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  exit_base ; 
 int /*<<< orphan*/  got_close ; 
 int /*<<< orphan*/  got_error ; 
 int /*<<< orphan*/  n_connected ; 
 scalar_t__ pending_connect_events ; 
 scalar_t__ stop_when_connected ; 
 scalar_t__ FUNC5 (void*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct bufferevent *bev, short what, void *ctx)
{
	FUNC1(("Got event %d", (int)what));
	if (what & BEV_EVENT_CONNECTED) {
		SSL *ssl;
		X509 *peer_cert;
		++n_connected;
		ssl = FUNC3(bev);
		FUNC6(ssl);
		peer_cert = FUNC0(ssl);
		if (0==FUNC5(ctx, "server")) {
			FUNC6(peer_cert == NULL);
		} else {
			FUNC6(peer_cert != NULL);
		}
		if (stop_when_connected) {
			if (--pending_connect_events == 0)
				FUNC4(exit_base, NULL);
		}
	} else if (what & BEV_EVENT_EOF) {
		FUNC1(("Got a good EOF"));
		++got_close;
		FUNC2(bev);
	} else if (what & BEV_EVENT_ERROR) {
		FUNC1(("Got an error."));
		++got_error;
		FUNC2(bev);
	}
end:
	;
}