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
struct node_host {scalar_t__ af; int /*<<< orphan*/ * ifname; struct node_host* next; } ;

/* Variables and functions */
 scalar_t__ AF_LINK ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 struct node_host* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct node_host* iftab ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

struct node_host *
FUNC7(char *ifa_name)
{
	struct node_host	*n;
	int			s;

	if (iftab == NULL)
		FUNC3();

	/* check whether this is a group */
	s = FUNC2();
	if (FUNC4(ifa_name)) {
		/* fake a node_host */
		if ((n = FUNC0(1, sizeof(*n))) == NULL)
			FUNC1(1, "calloc");
		if ((n->ifname = FUNC5(ifa_name)) == NULL)
			FUNC1(1, "strdup");
		return (n);
	}

	for (n = iftab; n; n = n->next) {
		if (n->af == AF_LINK && !FUNC6(n->ifname, ifa_name, IFNAMSIZ))
			return (n);
	}

	return (NULL);
}