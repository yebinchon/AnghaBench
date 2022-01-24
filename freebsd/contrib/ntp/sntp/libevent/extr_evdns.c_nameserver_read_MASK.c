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
struct nameserver {int /*<<< orphan*/  base; scalar_t__ timedout; int /*<<< orphan*/  address; int /*<<< orphan*/  socket; } ;
typedef  int /*<<< orphan*/  ss ;
typedef  int /*<<< orphan*/  packet ;
typedef  int ev_socklen_t ;
typedef  int /*<<< orphan*/  addrbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EVDNS_LOG_WARN ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr*,char*,int) ; 
 scalar_t__ FUNC3 (struct sockaddr*,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nameserver*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int const) ; 

__attribute__((used)) static void
FUNC10(struct nameserver *ns) {
	struct sockaddr_storage ss;
	ev_socklen_t addrlen = sizeof(ss);
	u8 packet[1500];
	char addrbuf[128];
	FUNC0(ns->base);

	for (;;) {
		const int r = FUNC8(ns->socket, (void*)packet,
		    sizeof(packet), 0,
		    (struct sockaddr*)&ss, &addrlen);
		if (r < 0) {
			int err = FUNC5(ns->socket);
			if (FUNC1(err))
				return;
			FUNC7(ns,
			    FUNC4(err));
			return;
		}
		if (FUNC3((struct sockaddr*)&ss,
			(struct sockaddr*)&ns->address, 0)) {
			FUNC6(EVDNS_LOG_WARN, "Address mismatch on received "
			    "DNS packet.  Apparent source was %s",
			    FUNC2(
				    (struct sockaddr *)&ss,
				    addrbuf, sizeof(addrbuf)));
			return;
		}

		ns->timedout = 0;
		FUNC9(ns->base, packet, r);
	}
}