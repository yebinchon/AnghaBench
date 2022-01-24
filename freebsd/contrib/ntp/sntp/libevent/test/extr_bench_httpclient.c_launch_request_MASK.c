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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct request_info {int /*<<< orphan*/  started; scalar_t__ n_read; } ;
struct bufferevent {int dummy; } ;
typedef  int /*<<< orphan*/  sin ;
typedef  int /*<<< orphan*/  evutil_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  BEV_OPT_CLOSE_ON_FREE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EV_READ ; 
 int EV_WRITE ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  base ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct request_info*) ; 
 struct bufferevent* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct sockaddr*,int) ; 
 int errno ; 
 int /*<<< orphan*/  errorcb ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 struct request_info* FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  readcb ; 
 int /*<<< orphan*/  resource ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  total_n_launched ; 

__attribute__((used)) static int
FUNC17(void)
{
	evutil_socket_t sock;
	struct sockaddr_in sin;
	struct bufferevent *b;

	struct request_info *ri;

	FUNC14(&sin, 0, sizeof(sin));

	++total_n_launched;

	sin.sin_family = AF_INET;
	sin.sin_addr.s_addr = FUNC11(0x7f000001);
	sin.sin_port = FUNC12(8080);
	if ((sock = FUNC16(AF_INET, SOCK_STREAM, 0)) < 0)
		return -1;
	if (FUNC9(sock) < 0) {
		FUNC7(sock);
		return -1;
	}
	FUNC10(sock);
	if (FUNC5(sock, (struct sockaddr*)&sin, sizeof(sin)) < 0) {
		int e = errno;
		if (! FUNC0(e)) {
			FUNC7(sock);
			return -1;
		}
	}

	ri = FUNC13(sizeof(*ri));
	if (ri == NULL) {
		FUNC15("Unable to allocate memory in launch_request()\n");
		return -1;
	}
	ri->n_read = 0;
	FUNC8(&ri->started, NULL);

	b = FUNC4(base, sock, BEV_OPT_CLOSE_ON_FREE);

	FUNC3(b, readcb, NULL, errorcb, ri);
	FUNC1(b, EV_READ|EV_WRITE);

	FUNC6(FUNC2(b),
	    "GET %s HTTP/1.0\r\n\r\n", resource);

	return 0;
}