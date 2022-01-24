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
struct netif {TYPE_1__* nif_driver; int /*<<< orphan*/  nif_unit; } ;
struct iodesc {struct netif* io_netif; } ;
struct TYPE_2__ {char* netif_bname; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EMFILE ; 
 int SOPEN_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct iodesc*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (struct netif*,struct iodesc*,void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (struct netif*,void*) ; 
 struct netif* FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 
 struct iodesc* sockets ; 

int
FUNC7(void *machdep_hint)
{
	int fd;
	struct iodesc *s;
	struct netif *nif;
	
	/* find a free socket */
	for (fd = 0, s = sockets; fd < SOPEN_MAX; fd++, s++)
		if (s->io_netif == (struct netif *)0)
			goto fnd;
	errno = EMFILE;
	return (-1);

fnd:
	FUNC0(s, sizeof(*s));
	FUNC2();
	nif = FUNC4(machdep_hint);
	if (!nif) 
		FUNC5("netboot: no interfaces left untried");
	if (FUNC3(nif, machdep_hint)) {
		FUNC6("netboot: couldn't probe %s%d\n",
		    nif->nif_driver->netif_bname, nif->nif_unit);
		errno = EINVAL;
		return (-1);
	}
	FUNC1(nif, s, machdep_hint);

	return (fd);
}