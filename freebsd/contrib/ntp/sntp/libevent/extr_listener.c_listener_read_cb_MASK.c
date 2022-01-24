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
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct evconnlistener {int refcnt; void* user_data; int /*<<< orphan*/  (* errorcb ) (struct evconnlistener*,void*) ;int /*<<< orphan*/  (* cb ) (struct evconnlistener*,scalar_t__,struct sockaddr*,int,void*) ;int /*<<< orphan*/  accept4_flags; } ;
typedef  int /*<<< orphan*/  ss ;
typedef  scalar_t__ evutil_socket_t ;
typedef  int /*<<< orphan*/  (* evconnlistener_errorcb ) (struct evconnlistener*,void*) ;
typedef  int /*<<< orphan*/  (* evconnlistener_cb ) (struct evconnlistener*,scalar_t__,struct sockaddr*,int,void*) ;
typedef  scalar_t__ ev_socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct evconnlistener*) ; 
 int /*<<< orphan*/  FUNC3 (struct evconnlistener*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*) ; 
 scalar_t__ FUNC5 (scalar_t__,struct sockaddr*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 int FUNC8 (struct evconnlistener*) ; 

__attribute__((used)) static void
FUNC9(evutil_socket_t fd, short what, void *p)
{
	struct evconnlistener *lev = p;
	int err;
	evconnlistener_cb cb;
	evconnlistener_errorcb errorcb;
	void *user_data;
	FUNC2(lev);
	while (1) {
		struct sockaddr_storage ss;
		ev_socklen_t socklen = sizeof(ss);
		evutil_socket_t new_fd = FUNC5(fd, (struct sockaddr*)&ss, &socklen, lev->accept4_flags);
		if (new_fd < 0)
			break;
		if (socklen == 0) {
			/* This can happen with some older linux kernels in
			 * response to nmap. */
			FUNC6(new_fd);
			continue;
		}

		if (lev->cb == NULL) {
			FUNC6(new_fd);
			FUNC3(lev);
			return;
		}
		++lev->refcnt;
		cb = lev->cb;
		user_data = lev->user_data;
		FUNC3(lev);
		cb(lev, new_fd, (struct sockaddr*)&ss, (int)socklen,
		    user_data);
		FUNC2(lev);
		if (lev->refcnt == 1) {
			int freed = FUNC8(lev);
			FUNC0(freed);

			FUNC6(new_fd);
			return;
		}
		--lev->refcnt;
	}
	err = FUNC7(fd);
	if (FUNC1(err)) {
		FUNC3(lev);
		return;
	}
	if (lev->errorcb != NULL) {
		++lev->refcnt;
		errorcb = lev->errorcb;
		user_data = lev->user_data;
		FUNC3(lev);
		errorcb(lev, user_data);
		FUNC2(lev);
		FUNC8(lev);
	} else {
		FUNC4(fd, "Error from accept() call");
	}
}