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
struct exact_info {char* loc; char* bus; TYPE_1__* dev; } ;
struct TYPE_2__ {int dd_flags; } ;

/* Variables and functions */
 int DF_ATTACHED_ONCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  find_exact_dev ; 
 scalar_t__ FUNC3 (char) ; 
 int /*<<< orphan*/  root ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 char* FUNC5 (char*) ; 
 int FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC8(char *nomatch)
{
	char *bus, *pnpinfo, *tmp, *busnameunit;
	struct exact_info info;

	/*
	 * Find our bus name. It will include the unit number. We have to search
	 * backwards to avoid false positive for any PNP string that has ' on '
	 * in them, which would come earlier in the string. Like if there were
	 * an 'Old Bard' ethernet card made by 'Stratford on Avon Hardware' or
	 * something silly like that.
	 */
	tmp = nomatch + FUNC6(nomatch) - 4;
	while (tmp > nomatch && FUNC7(tmp, " on ", 4) != 0)
		tmp--;
	if (tmp == nomatch)
		FUNC1(1, "No bus found in nomatch string: '%s'", nomatch);
	bus = tmp + 4;
	*tmp = '\0';
	busnameunit = FUNC5(bus);
	if (busnameunit == NULL)
		FUNC1(1, "Can't allocate memory for strings");
	tmp = bus + FUNC6(bus) - 1;
	while (tmp > bus && FUNC3(*tmp))
		tmp--;
	*++tmp = '\0';

	/*
	 * Note: the NOMATCH events place both the bus location as well as the
	 * pnp info after the 'at' and we don't know where one stops and the
	 * other begins, so we pass the whole thing to our search routine.
	 */
	if (*nomatch == '?')
		nomatch++;
	if (FUNC7(nomatch, " at ", 4) != 0)
		FUNC1(1, "Malformed NOMATCH string: '%s'", nomatch);
	pnpinfo = nomatch + 4;

	/*
	 * See if we can find the devinfo_dev for this device. If we
	 * can, and it's been attached before, we should filter it out
	 * so that a kldunload foo doesn't cause an immediate reload.
	 */
	info.loc = pnpinfo;
	info.bus = busnameunit;
	info.dev = NULL;
	FUNC0(root, find_exact_dev, (void *)&info);
	if (info.dev != NULL && info.dev->dd_flags & DF_ATTACHED_ONCE)
		FUNC2(0);
	FUNC4(bus, "", pnpinfo);

	FUNC2(0);
}