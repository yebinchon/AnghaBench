#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_addr; } ;
struct pfsyncreq {TYPE_1__ pfsyncr_syncpeer; } ;
struct afswtch {int dummy; } ;
struct addrinfo {TYPE_3__* ai_addr; int /*<<< orphan*/  ai_socktype; scalar_t__ ai_family; } ;
typedef  int /*<<< orphan*/  hints ;
typedef  scalar_t__ caddr_t ;
struct TYPE_8__ {scalar_t__ ifr_data; } ;
struct TYPE_7__ {scalar_t__ sa_family; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  SIOCGETPFSYNC ; 
 int /*<<< orphan*/  SIOCSETPFSYNC ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 TYPE_4__ ifr ; 
 int FUNC6 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 

void
FUNC8(const char *val, int d, int s, const struct afswtch *rafp)
{
	struct pfsyncreq preq;
	struct addrinfo hints, *peerres;
	int ecode;

	FUNC0((char *)&preq, sizeof(struct pfsyncreq));
	ifr.ifr_data = (caddr_t)&preq;

	if (FUNC6(s, SIOCGETPFSYNC, (caddr_t)&ifr) == -1)
		FUNC1(1, "SIOCGETPFSYNC");

	FUNC7(&hints, 0, sizeof(hints));
	hints.ai_family = AF_INET;
	hints.ai_socktype = SOCK_DGRAM;	/*dummy*/

	if ((ecode = FUNC5(val, NULL, &hints, &peerres)) != 0)
		FUNC2(1, "error in parsing address string: %s",
		    FUNC4(ecode));

	if (peerres->ai_addr->sa_family != AF_INET)
		FUNC2(1, "only IPv4 addresses supported for the syncpeer");

	preq.pfsyncr_syncpeer.s_addr = ((struct sockaddr_in *)
	    peerres->ai_addr)->sin_addr.s_addr;

	if (FUNC6(s, SIOCSETPFSYNC, (caddr_t)&ifr) == -1)
		FUNC1(1, "SIOCSETPFSYNC");
	FUNC3(peerres);
}