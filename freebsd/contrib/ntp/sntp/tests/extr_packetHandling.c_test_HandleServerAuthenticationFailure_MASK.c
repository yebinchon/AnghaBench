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
struct pkt {int dummy; } ;
typedef  struct pkt sockaddr_u ;

/* Variables and functions */
 int SERVER_AUTH_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pkt) ; 
 int /*<<< orphan*/  FUNC2 (int,struct pkt*,struct pkt*,char*) ; 

void
FUNC3(void)
{
	struct pkt	rpkt;
	sockaddr_u	host;
	int		rpktl;

	FUNC1(rpkt);
	FUNC1(host);
	rpktl = SERVER_AUTH_FAIL;
	FUNC0(1, FUNC2(rpktl, &rpkt, &host, ""));
}