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
struct bufferevent_private {scalar_t__ refcnt; } ;
struct bufferevent_filtered {scalar_t__ got_eof; } ;
struct bufferevent {int dummy; } ;
typedef  enum bufferevent_flush_mode { ____Placeholder_bufferevent_flush_mode } bufferevent_flush_mode ;
typedef  enum bufferevent_filter_result { ____Placeholder_bufferevent_filter_result } bufferevent_filter_result ;

/* Variables and functions */
 int BEV_FINISHED ; 
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int BEV_NORMAL ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 struct bufferevent_private* FUNC2 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  EV_READ ; 
 int FUNC4 (struct bufferevent_filtered*,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct bufferevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bufferevent* FUNC6 (struct bufferevent_filtered*) ; 

__attribute__((used)) static void
FUNC7(struct bufferevent *underlying, void *me_)
{
	struct bufferevent_filtered *bevf = me_;
	enum bufferevent_filter_result res;
	enum bufferevent_flush_mode state;
	struct bufferevent *bufev = FUNC6(bevf);
	struct bufferevent_private *bufev_private = FUNC2(bufev);
	int processed_any = 0;

	FUNC0(bufev);

	// It's possible our refcount is 0 at this point if another thread free'd our filterevent
	FUNC3(bufev_private->refcnt >= 0);

	// If our refcount is > 0
	if (bufev_private->refcnt > 0) {

		if (bevf->got_eof)
			state = BEV_FINISHED;
		else
			state = BEV_NORMAL;

		/* XXXX use return value */
		res = FUNC4(bevf, state, &processed_any);
		(void)res;

		/* XXX This should be in process_input, not here.  There are
		 * other places that can call process-input, and they should
		 * force readcb calls as needed. */
		if (processed_any)
			FUNC5(bufev, EV_READ, 0);
	}

	FUNC1(bufev);
}