#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int options; } ;
struct bufferevent_filtered {TYPE_2__* underlying; TYPE_1__ bev; } ;
struct bufferevent {int dummy; } ;
struct TYPE_9__ {int refcnt; } ;
struct TYPE_8__ {scalar_t__ errorcb; } ;

/* Variables and functions */
 int BEV_OPT_CLOSE_ON_FREE ; 
 int /*<<< orphan*/  BEV_SUSPEND_FILT_READ ; 
 TYPE_5__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent_filtered*) ; 
 scalar_t__ be_filter_eventcb ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct bufferevent_filtered* FUNC6 (struct bufferevent*) ; 

__attribute__((used)) static void
FUNC7(struct bufferevent *bev)
{
	struct bufferevent_filtered *bevf = FUNC6(bev);
	FUNC1(bevf);

	if (bevf->bev.options & BEV_OPT_CLOSE_ON_FREE) {
		/* Yes, there is also a decref in bufferevent_decref_.
		 * That decref corresponds to the incref when we set
		 * underlying for the first time.  This decref is an
		 * extra one to remove the last reference.
		 */
		if (FUNC0(bevf->underlying)->refcnt < 2) {
			FUNC5("BEV_OPT_CLOSE_ON_FREE set on an "
			    "bufferevent with too few references");
		} else {
			FUNC2(bevf->underlying);
		}
	} else {
		if (bevf->underlying) {
			if (bevf->underlying->errorcb == be_filter_eventcb)
				FUNC3(bevf->underlying,
				    NULL, NULL, NULL, NULL);
			FUNC4(bevf->underlying,
			    BEV_SUSPEND_FILT_READ);
		}
	}
}