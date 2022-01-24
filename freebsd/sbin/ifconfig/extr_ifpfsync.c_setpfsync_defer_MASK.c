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
struct pfsyncreq {int pfsyncr_defer; } ;
struct afswtch {int dummy; } ;
typedef  scalar_t__ caddr_t ;
struct TYPE_2__ {scalar_t__ ifr_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIOCGETPFSYNC ; 
 int /*<<< orphan*/  SIOCSETPFSYNC ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 TYPE_1__ ifr ; 
 int FUNC1 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

void
FUNC3(const char *val, int d, int s, const struct afswtch *rafp)
{
	struct pfsyncreq preq;

	FUNC2((char *)&preq, 0, sizeof(struct pfsyncreq));
	ifr.ifr_data = (caddr_t)&preq;

	if (FUNC1(s, SIOCGETPFSYNC, (caddr_t)&ifr) == -1)
		FUNC0(1, "SIOCGETPFSYNC");

	preq.pfsyncr_defer = d;
	if (FUNC1(s, SIOCSETPFSYNC, (caddr_t)&ifr) == -1)
		FUNC0(1, "SIOCSETPFSYNC");
}