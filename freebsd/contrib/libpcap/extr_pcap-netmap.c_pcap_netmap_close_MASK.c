#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct pcap_netmap {scalar_t__ must_clear_promisc; struct nm_desc* d; } ;
struct nm_desc {int dummy; } ;
struct TYPE_5__ {struct pcap_netmap* priv; } ;
typedef  TYPE_1__ pcap_t ;

/* Variables and functions */
 int IFF_PPROMISC ; 
 int /*<<< orphan*/  SIOCGIFFLAGS ; 
 int /*<<< orphan*/  SIOCSIFFLAGS ; 
 int /*<<< orphan*/  FUNC0 (struct nm_desc*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC3(pcap_t *p)
{
	struct pcap_netmap *pn = p->priv;
	struct nm_desc *d = pn->d;
	uint32_t if_flags = 0;

	if (pn->must_clear_promisc) {
		FUNC2(p, SIOCGIFFLAGS, &if_flags); /* fetch flags */
		if (if_flags & IFF_PPROMISC) {
			if_flags &= ~IFF_PPROMISC;
			FUNC2(p, SIOCSIFFLAGS, &if_flags);
		}
	}
	FUNC0(d);
	FUNC1(p);
}