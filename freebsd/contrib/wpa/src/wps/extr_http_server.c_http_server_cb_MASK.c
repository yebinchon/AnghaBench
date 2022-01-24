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
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {int dummy; } ;
struct http_server {int /*<<< orphan*/  request_count; struct http_request* requests; int /*<<< orphan*/  fd; } ;
struct http_request {struct http_request* next; } ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 struct http_request* FUNC2 (struct http_server*,int,struct sockaddr_in*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void FUNC7(int sd, void *eloop_ctx, void *sock_ctx)
{
	struct sockaddr_in addr;
	socklen_t addr_len = sizeof(addr);
	struct http_server *srv = eloop_ctx;
	int conn;
	struct http_request *req;

	conn = FUNC0(srv->fd, (struct sockaddr *) &addr, &addr_len);
	if (conn < 0) {
		FUNC6(MSG_DEBUG, "HTTP: Failed to accept new connection: "
			   "%s", FUNC5(errno));
		return;
	}
	FUNC6(MSG_DEBUG, "HTTP: Connection from %s:%d",
		   FUNC3(addr.sin_addr), FUNC4(addr.sin_port));

	req = FUNC2(srv, conn, &addr);
	if (req == NULL) {
		FUNC1(conn);
		return;
	}

	req->next = srv->requests;
	srv->requests = req;
	srv->request_count++;
}