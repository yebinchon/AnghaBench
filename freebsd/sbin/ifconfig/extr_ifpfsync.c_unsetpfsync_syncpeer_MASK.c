#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct pfsyncreq {TYPE_1__ pfsyncr_syncpeer; } ;
struct afswtch {int dummy; } ;
typedef  scalar_t__ caddr_t ;
struct TYPE_4__ {scalar_t__ ifr_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIOCGETPFSYNC ; 
 int /*<<< orphan*/  SIOCSETPFSYNC ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 TYPE_2__ ifr ; 
 int FUNC2 (int,int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC3(const char *val, int d, int s, const struct afswtch *rafp)
{
	struct pfsyncreq preq;

	FUNC0((char *)&preq, sizeof(struct pfsyncreq));
	ifr.ifr_data = (caddr_t)&preq;

	if (FUNC2(s, SIOCGETPFSYNC, (caddr_t)&ifr) == -1)
		FUNC1(1, "SIOCGETPFSYNC");

	preq.pfsyncr_syncpeer.s_addr = 0;

	if (FUNC2(s, SIOCSETPFSYNC, (caddr_t)&ifr) == -1)
		FUNC1(1, "SIOCSETPFSYNC");
}