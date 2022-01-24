#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct pf_addr {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  v6; } ;
struct TYPE_7__ {TYPE_4__ mask; TYPE_4__ addr; } ;
struct TYPE_8__ {TYPE_1__ a; } ;
struct TYPE_9__ {TYPE_2__ v; } ;
struct node_host {scalar_t__ af; int ifa_flags; scalar_t__ ifindex; char* ifname; struct node_host* tail; struct node_host* next; TYPE_3__ addr; TYPE_4__ peer; TYPE_4__ bcast; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int IFF_BROADCAST ; 
 int IFF_LINK1 ; 
 int IFF_LOOPBACK ; 
 int IFF_POINTOPOINT ; 
 int /*<<< orphan*/  IFNAMSIZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int PFI_AFLAG_BROADCAST ; 
 int PFI_AFLAG_NETWORK ; 
 int PFI_AFLAG_NOALIAS ; 
 int PFI_AFLAG_PEER ; 
 struct node_host* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 struct node_host* FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (char*,struct node_host*) ; 
 struct node_host* iftab ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct node_host*,int) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_4__*,scalar_t__) ; 

struct node_host *
FUNC12(char *ifa_name, int flags)
{
	struct node_host	*p = NULL, *h = NULL, *n = NULL;
	int			 got4 = 0, got6 = 0;
	const char		 *last_if = NULL;

	if ((h = FUNC3(ifa_name, flags)) != NULL)
		return (h);

	if (!FUNC10(ifa_name, "self", IFNAMSIZ))
		ifa_name = NULL;

	if (iftab == NULL)
		FUNC4();

	for (p = iftab; p; p = p->next) {
		if (FUNC5(ifa_name, p))
			continue;
		if ((flags & PFI_AFLAG_BROADCAST) && p->af != AF_INET)
			continue;
		if ((flags & PFI_AFLAG_BROADCAST) &&
		    !(p->ifa_flags & IFF_BROADCAST))
			continue;
		if ((flags & PFI_AFLAG_PEER) &&
		    !(p->ifa_flags & IFF_POINTOPOINT))
			continue;
		if ((flags & PFI_AFLAG_NETWORK) && p->ifindex > 0)
			continue;
		if (last_if == NULL || FUNC8(last_if, p->ifname))
			got4 = got6 = 0;
		last_if = p->ifname;
		if ((flags & PFI_AFLAG_NOALIAS) && p->af == AF_INET && got4)
			continue;
		if ((flags & PFI_AFLAG_NOALIAS) && p->af == AF_INET6 &&
		    FUNC0(&p->addr.v.a.addr.v6))
			continue;
		if ((flags & PFI_AFLAG_NOALIAS) && p->af == AF_INET6 && got6)
			continue;
		if (p->af == AF_INET)
			got4 = 1;
		else
			got6 = 1;
		n = FUNC1(1, sizeof(struct node_host));
		if (n == NULL)
			FUNC2(1, "address: calloc");
		n->af = p->af;
		if (flags & PFI_AFLAG_BROADCAST)
			FUNC6(&n->addr.v.a.addr, &p->bcast,
			    sizeof(struct pf_addr));
		else if (flags & PFI_AFLAG_PEER)
			FUNC6(&n->addr.v.a.addr, &p->peer,
			    sizeof(struct pf_addr));
		else
			FUNC6(&n->addr.v.a.addr, &p->addr.v.a.addr,
			    sizeof(struct pf_addr));
		if (flags & PFI_AFLAG_NETWORK)
			FUNC7(n, FUNC11(&p->addr.v.a.mask, n->af));
		else {
			if (n->af == AF_INET) {
				if (p->ifa_flags & IFF_LOOPBACK &&
				    p->ifa_flags & IFF_LINK1)
					FUNC6(&n->addr.v.a.mask,
					    &p->addr.v.a.mask,
					    sizeof(struct pf_addr));
				else
					FUNC7(n, 32);
			} else
				FUNC7(n, 128);
		}
		n->ifindex = p->ifindex;
		n->ifname = FUNC9(p->ifname);

		n->next = NULL;
		n->tail = n;
		if (h == NULL)
			h = n;
		else {
			h->tail->next = n;
			h->tail = n;
		}
	}
	return (h);
}