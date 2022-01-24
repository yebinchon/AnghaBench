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
struct be_conn_hostname_result {short what; int dnserr; } ;

/* Variables and functions */
 short BEV_EVENT_CONNECTED ; 
 short BEV_EVENT_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  be_connect_hostname_base ; 
 int FUNC2 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int total_connected_or_failed ; 
 int total_n_accepted ; 

__attribute__((used)) static void
FUNC5(struct bufferevent *bev, short what, void *ctx)
{
	struct be_conn_hostname_result *got = ctx;
	if (!got->what) {
		FUNC0(("Got a bufferevent event %d", what));
		got->what = what;

		if ((what & BEV_EVENT_CONNECTED) || (what & BEV_EVENT_ERROR)) {
			int r;
			if ((r = FUNC2(bev))) {
				got->dnserr = r;
				FUNC0(("DNS error %d: %s", r,
					   FUNC4(r)));
			}			++total_connected_or_failed;
			FUNC0(("Got %d connections or errors.", total_connected_or_failed));

			if (total_n_accepted >= 3 && total_connected_or_failed >= 5)
				FUNC3(be_connect_hostname_base,
				    NULL);
		}
	} else {
		FUNC1(("Two events on one bufferevent. %d,%d",
			got->what, (int)what));
	}
}