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
struct TYPE_2__ {unsigned long s_addr; } ;
struct sockaddr_in {scalar_t__ sin_port; int /*<<< orphan*/  sin_family; TYPE_1__ sin_addr; } ;
struct hostent {scalar_t__ h_addr; } ;
typedef  int /*<<< orphan*/  destAddr ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  RDBPROG ; 
 int /*<<< orphan*/  RDBVERS ; 
 int /*<<< orphan*/  RPC_ANYSOCK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (struct sockaddr_in*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 unsigned long FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct sockaddr_in*,char,int) ; 
 int /*<<< orphan*/ * pClient ; 
 int /*<<< orphan*/  ptraceSock ; 

__attribute__((used)) static void
FUNC6 (char *host)
{
  struct sockaddr_in destAddr;
  struct hostent *destHost;
  unsigned long addr;

  /* Get the internet address for the given host.  Allow a numeric
     IP address or a hostname.  */

  addr = FUNC4 (host);
  if (addr == -1)
    {
      destHost = (struct hostent *) FUNC3 (host);
      if (destHost == NULL)
	/* FIXME: Probably should include hostname here in quotes.
	   For example if the user types "target vxworks vx960 " it should
	   say "Invalid host `vx960 '." not just "Invalid hostname".  */
	FUNC2 ("Invalid hostname.  Couldn't find remote host address.");
      addr = *(unsigned long *) destHost->h_addr;
    }

  FUNC5 (&destAddr, '\0', sizeof (destAddr));

  destAddr.sin_addr.s_addr = addr;
  destAddr.sin_family = AF_INET;
  destAddr.sin_port = 0;	/* set to actual port that remote
				   ptrace is listening on.  */

  /* Create a tcp client transport on which to issue
     calls to the remote ptrace server.  */

  ptraceSock = RPC_ANYSOCK;
  pClient = FUNC1 (&destAddr, RDBPROG, RDBVERS, &ptraceSock, 0, 0);
  /* FIXME, here is where we deal with different version numbers of the
     proto */

  if (pClient == NULL)
    {
      FUNC0 ("\tnet_connect");
      FUNC2 ("Couldn't connect to remote target.");
    }
}