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
typedef  int /*<<< orphan*/  u8 ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct evdns_server_port {int /*<<< orphan*/  socket; } ;
typedef  int /*<<< orphan*/  packet ;
typedef  int ev_socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdns_server_port*) ; 
 int /*<<< orphan*/  EVDNS_LOG_WARN ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,struct evdns_server_port*,struct sockaddr*,int) ; 

__attribute__((used)) static void
FUNC7(struct evdns_server_port *s) {
	u8 packet[1500];
	struct sockaddr_storage addr;
	ev_socklen_t addrlen;
	int r;
	FUNC0(s);

	for (;;) {
		addrlen = sizeof(struct sockaddr_storage);
		r = FUNC5(s->socket, (void*)packet, sizeof(packet), 0,
					 (struct sockaddr*) &addr, &addrlen);
		if (r < 0) {
			int err = FUNC3(s->socket);
			if (FUNC1(err))
				return;
			FUNC4(EVDNS_LOG_WARN,
			    "Error %s (%d) while reading request.",
			    FUNC2(err), err);
			return;
		}
		FUNC6(packet, r, s, (struct sockaddr*) &addr, addrlen);
	}
}