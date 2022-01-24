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
struct timeval {int dummy; } ;
struct request_info {int /*<<< orphan*/  started; scalar_t__ n_read; } ;
struct bufferevent {int dummy; } ;

/* Variables and functions */
 short BEV_EVENT_EOF ; 
 int EV_READ ; 
 int EV_WRITE ; 
 scalar_t__ N_REQUESTS ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct timeval*,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC6 (struct request_info*) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  total_n_bytes ; 
 int /*<<< orphan*/  total_n_errors ; 
 int total_n_handled ; 
 scalar_t__ total_n_launched ; 
 int /*<<< orphan*/  total_time ; 

__attribute__((used)) static void
FUNC10(struct bufferevent *b, short what, void *arg)
{
	struct request_info *ri = arg;
	struct timeval now, diff;
	if (what & BEV_EVENT_EOF) {
		++total_n_handled;
		total_n_bytes += ri->n_read;
		FUNC3(&now, NULL);
		FUNC5(&now, &ri->started, &diff);
		FUNC4(&diff, &total_time, &total_time);

		if (total_n_handled && (total_n_handled%1000)==0)
			FUNC9("%d requests done\n",total_n_handled);

		if (total_n_launched < N_REQUESTS) {
			if (FUNC7() < 0)
				FUNC8("Can't launch");
		}
	} else {
		++total_n_errors;
		FUNC8("Unexpected error");
	}

	FUNC2(b, NULL, NULL, NULL, NULL);
	FUNC6(ri);
	FUNC0(b, EV_READ|EV_WRITE);
	FUNC1(b);
}