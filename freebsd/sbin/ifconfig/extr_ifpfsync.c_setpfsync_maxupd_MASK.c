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
struct pfsyncreq {int pfsyncr_maxupdates; } ;
struct afswtch {int dummy; } ;
typedef  scalar_t__ caddr_t ;
struct TYPE_2__ {scalar_t__ ifr_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIOCGETPFSYNC ; 
 int /*<<< orphan*/  SIOCSETPFSYNC ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 TYPE_1__ ifr ; 
 int FUNC3 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 

void
FUNC5(const char *val, int d, int s, const struct afswtch *rafp)
{
	struct pfsyncreq preq;
	int maxupdates;

	maxupdates = FUNC0(val);
	if ((maxupdates < 0) || (maxupdates > 255))
		FUNC2(1, "maxupd %s: out of range", val);

	FUNC4((char *)&preq, 0, sizeof(struct pfsyncreq));
	ifr.ifr_data = (caddr_t)&preq;

	if (FUNC3(s, SIOCGETPFSYNC, (caddr_t)&ifr) == -1)
		FUNC1(1, "SIOCGETPFSYNC");

	preq.pfsyncr_maxupdates = maxupdates;

	if (FUNC3(s, SIOCSETPFSYNC, (caddr_t)&ifr) == -1)
		FUNC1(1, "SIOCSETPFSYNC");
}