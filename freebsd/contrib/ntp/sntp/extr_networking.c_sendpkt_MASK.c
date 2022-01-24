#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pkt {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  sa; } ;
typedef  TYPE_1__ sockaddr_u ;
typedef  int /*<<< orphan*/  SOCKET ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int SOCKET_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int TRUE ; 
 int debug ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pkt*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC7 (
	SOCKET rsock,
	sockaddr_u *dest,
	struct pkt *pkt,
	int len
	)
{
	int cc;

#ifdef DEBUG
	if (debug > 2) {
		printf("sntp sendpkt: Packet data:\n");
		pkt_output(pkt, len, stdout);
	}
#endif
	FUNC1(1, ("sntp sendpkt: Sending packet to %s ...\n",
		  FUNC6(dest)));

	cc = FUNC5(rsock, (void *)pkt, len, 0, &dest->sa, 
		    FUNC0(dest));
	if (cc == SOCKET_ERROR) {
		FUNC2(LOG_ERR, "Send to %s failed, %m",
			FUNC6(dest));
		return FALSE;
	}
	FUNC1(1, ("Packet sent.\n"));

	return TRUE;
}