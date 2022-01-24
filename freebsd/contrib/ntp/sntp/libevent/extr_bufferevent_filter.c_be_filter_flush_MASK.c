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
struct bufferevent_filtered {int /*<<< orphan*/  underlying; } ;
struct bufferevent {int dummy; } ;
typedef  enum bufferevent_flush_mode { ____Placeholder_bufferevent_flush_mode } bufferevent_flush_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent_filtered*) ; 
 short EV_READ ; 
 short EV_WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent_filtered*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent_filtered*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,short,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bufferevent*) ; 
 struct bufferevent_filtered* FUNC6 (struct bufferevent*) ; 

__attribute__((used)) static int
FUNC7(struct bufferevent *bufev,
    short iotype, enum bufferevent_flush_mode mode)
{
	struct bufferevent_filtered *bevf = FUNC6(bufev);
	int processed_any = 0;
	FUNC0(bevf);

	FUNC5(bufev);

	if (iotype & EV_READ) {
		FUNC1(bevf, mode, &processed_any);
	}
	if (iotype & EV_WRITE) {
		FUNC2(bevf, mode, &processed_any);
	}
	/* XXX check the return value? */
	/* XXX does this want to recursively call lower-level flushes? */
	FUNC4(bevf->underlying, iotype, mode);

	FUNC3(bufev);

	return processed_any;
}