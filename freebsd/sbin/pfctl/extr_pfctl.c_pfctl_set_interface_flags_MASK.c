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
struct pfioc_iface {int pfiio_flags; int /*<<< orphan*/  pfiio_name; } ;
struct pfctl {int opts; int /*<<< orphan*/  dev; } ;
struct node_host {char* ifname; struct node_host* next; } ;
typedef  int /*<<< orphan*/  pi ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCCLRIFFLAG ; 
 int /*<<< orphan*/  DIOCSETIFFLAG ; 
 int PFCTL_FLAG_OPTION ; 
 int PF_OPT_NOACTION ; 
 int /*<<< orphan*/  FUNC0 (struct pfioc_iface*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 struct node_host* FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pfioc_iface*) ; 
 int loadopt ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

int
FUNC7(struct pfctl *pf, char *ifname, int flags, int how)
{
	struct pfioc_iface	pi;
	struct node_host	*h = NULL, *n = NULL;

	if ((loadopt & PFCTL_FLAG_OPTION) == 0)
		return (0);

	FUNC0(&pi, sizeof(pi));

	pi.pfiio_flags = flags;

	/* Make sure our cache matches the kernel. If we set or clear the flag
	 * for a group this applies to all members. */
	h = FUNC3(ifname, 0);
	for (n = h; n != NULL; n = n->next)
		FUNC7(pf, n->ifname, flags, how);

	if (FUNC6(pi.pfiio_name, ifname, sizeof(pi.pfiio_name)) >=
	    sizeof(pi.pfiio_name))
		FUNC2(1, "pfctl_set_interface_flags: strlcpy");

	if ((pf->opts & PF_OPT_NOACTION) == 0) {
		if (how == 0) {
			if (FUNC4(pf->dev, DIOCCLRIFFLAG, &pi))
				FUNC1(1, "DIOCCLRIFFLAG");
		} else {
			if (FUNC4(pf->dev, DIOCSETIFFLAG, &pi))
				FUNC1(1, "DIOCSETIFFLAG");
			FUNC5(ifname);
		}
	}
	return (0);
}