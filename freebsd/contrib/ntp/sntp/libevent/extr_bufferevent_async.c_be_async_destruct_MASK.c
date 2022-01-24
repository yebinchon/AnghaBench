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
struct bufferevent_private {int options; } ;
struct bufferevent_async {int /*<<< orphan*/  read_in_progress; int /*<<< orphan*/  write_in_progress; } ;
struct bufferevent {int /*<<< orphan*/  input; } ;
typedef  scalar_t__ evutil_socket_t ;

/* Variables and functions */
 int BEV_OPT_CLOSE_ON_FREE ; 
 struct bufferevent_private* FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent_async*) ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent_async*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 struct bufferevent_async* FUNC7 (struct bufferevent*) ; 

__attribute__((used)) static void
FUNC8(struct bufferevent *bev)
{
	struct bufferevent_async *bev_async = FUNC7(bev);
	struct bufferevent_private *bev_p = FUNC0(bev);
	evutil_socket_t fd;

	FUNC1(!FUNC7(bev)->write_in_progress &&
			!FUNC7(bev)->read_in_progress);

	FUNC2(bev_async);
	FUNC3(bev_async);

	fd = FUNC4(bev->input);
	if (fd != (evutil_socket_t)INVALID_SOCKET &&
		(bev_p->options & BEV_OPT_CLOSE_ON_FREE)) {
		FUNC6(fd);
		FUNC5(bev->input, INVALID_SOCKET);
	}
}