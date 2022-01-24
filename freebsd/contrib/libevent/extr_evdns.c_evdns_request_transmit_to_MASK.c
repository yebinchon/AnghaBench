#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
struct request {scalar_t__ request_len; int /*<<< orphan*/  ns; scalar_t__ request; TYPE_1__* base; } ;
struct nameserver {int requests_inflight; int /*<<< orphan*/  socket; int /*<<< orphan*/  addrlen; int /*<<< orphan*/  address; int /*<<< orphan*/  event; } ;
struct TYPE_2__ {scalar_t__ disable_when_inactive; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,void*,scalar_t__,int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct request *req, struct nameserver *server) {
	int r;
	FUNC0(req->base);
	FUNC1(req);

	if (server->requests_inflight == 1 &&
		req->base->disable_when_inactive &&
		FUNC3(&server->event, NULL) < 0) {
		return 1;
	}

	r = FUNC7(server->socket, (void*)req->request, req->request_len, 0,
	    (struct sockaddr *)&server->address, server->addrlen);
	if (r < 0) {
		int err = FUNC5(server->socket);
		if (FUNC2(err))
			return 1;
		FUNC6(req->ns, FUNC4(err));
		return 2;
	} else if (r != (int)req->request_len) {
		return 1;  /* short write */
	} else {
		return 0;
	}
}