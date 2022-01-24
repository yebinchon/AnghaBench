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
struct node_host {struct node_host* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFNAMSIZ ; 
 int PFI_AFLAG_BROADCAST ; 
 int PFI_AFLAG_MODEMASK ; 
 int PFI_AFLAG_NETWORK ; 
 int PFI_AFLAG_NOALIAS ; 
 int PFI_AFLAG_PEER ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 struct node_host* FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct node_host*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 char* FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC9 (char*,char) ; 

struct node_host *
FUNC10(const char *s, int mask)
{
	struct node_host	*n, *h = NULL;
	char			*p, *ps;
	int			 flags = 0;

	if ((ps = FUNC7(s)) == NULL)
		FUNC0(1, "host_if: strdup");
	while ((p = FUNC9(ps, ':')) != NULL) {
		if (!FUNC6(p+1, "network"))
			flags |= PFI_AFLAG_NETWORK;
		else if (!FUNC6(p+1, "broadcast"))
			flags |= PFI_AFLAG_BROADCAST;
		else if (!FUNC6(p+1, "peer"))
			flags |= PFI_AFLAG_PEER;
		else if (!FUNC6(p+1, "0"))
			flags |= PFI_AFLAG_NOALIAS;
		else {
			FUNC2(ps);
			return (NULL);
		}
		*p = '\0';
	}
	if (flags & (flags - 1) & PFI_AFLAG_MODEMASK) { /* Yep! */
		FUNC1(stderr, "illegal combination of interface modifiers\n");
		FUNC2(ps);
		return (NULL);
	}
	if ((flags & (PFI_AFLAG_NETWORK|PFI_AFLAG_BROADCAST)) && mask > -1) {
		FUNC1(stderr, "network or broadcast lookup, but "
		    "extra netmask given\n");
		FUNC2(ps);
		return (NULL);
	}
	if (FUNC3(ps) || !FUNC8(ps, "self", IFNAMSIZ)) {
		/* interface with this name exists */
		h = FUNC4(ps, flags);
		for (n = h; n != NULL && mask > -1; n = n->next)
			FUNC5(n, mask);
	}

	FUNC2(ps);
	return (h);
}