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
typedef  enum regress_openssl_type { ____Placeholder_regress_openssl_type } regress_openssl_type ;
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 short BEV_EVENT_CONNECTED ; 
 short BEV_EVENT_EOF ; 
 short BEV_EVENT_ERROR ; 
 short BEV_EVENT_TIMEOUT ; 
 int REGRESS_OPENSSL_CLIENT ; 
 int REGRESS_OPENSSL_CLIENT_WRITE ; 
 int REGRESS_OPENSSL_FD ; 
 int REGRESS_OPENSSL_FILTER ; 
 int REGRESS_OPENSSL_FREED ; 
 int REGRESS_OPENSSL_SERVER ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC4 (struct bufferevent*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bufferevent*) ; 
 int /*<<< orphan*/ * FUNC6 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  exit_base ; 
 int /*<<< orphan*/  got_close ; 
 int /*<<< orphan*/  got_error ; 
 int /*<<< orphan*/  got_timeout ; 
 int /*<<< orphan*/  n_connected ; 
 scalar_t__ pending_connect_events ; 
 scalar_t__ stop_when_connected ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(struct bufferevent *bev, short what, void *ctx)
{
	enum regress_openssl_type type;
	type = (enum regress_openssl_type)ctx;

	FUNC1(("Got event %d", (int)what));
	if (what & BEV_EVENT_CONNECTED) {
		SSL *ssl;
		X509 *peer_cert;
		++n_connected;
		ssl = FUNC6(bev);
		FUNC9(ssl);
		peer_cert = FUNC0(ssl);
		if (type & REGRESS_OPENSSL_SERVER) {
			FUNC9(peer_cert == NULL);
		} else {
			FUNC9(peer_cert != NULL);
		}
		if (stop_when_connected) {
			if (--pending_connect_events == 0)
				FUNC8(exit_base, NULL);
		}

		if ((type & REGRESS_OPENSSL_CLIENT_WRITE) && (type & REGRESS_OPENSSL_CLIENT))
			FUNC7(FUNC3(bev), "1\n");
	} else if (what & BEV_EVENT_EOF) {
		FUNC1(("Got a good EOF"));
		++got_close;
		if (type & REGRESS_OPENSSL_FD) {
			FUNC4(bev, type & REGRESS_OPENSSL_FILTER);
		}
		if (type & REGRESS_OPENSSL_FREED) {
			FUNC5(bev);
		}
		FUNC2(bev);
	} else if (what & BEV_EVENT_ERROR) {
		FUNC1(("Got an error."));
		++got_error;
		if (type & REGRESS_OPENSSL_FD) {
			FUNC4(bev, type & REGRESS_OPENSSL_FILTER);
		}
		if (type & REGRESS_OPENSSL_FREED) {
			FUNC5(bev);
		}
		FUNC2(bev);
	} else if (what & BEV_EVENT_TIMEOUT) {
		FUNC1(("Got timeout."));
		++got_timeout;
		if (type & REGRESS_OPENSSL_FD) {
			FUNC4(bev, type & REGRESS_OPENSSL_FILTER);
		}
		if (type & REGRESS_OPENSSL_FREED) {
			FUNC5(bev);
		}
		FUNC2(bev);
	}
end:
	;
}