#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pcap_ng_sf {int /*<<< orphan*/  ifaces; } ;
struct TYPE_4__ {struct pcap_ng_sf* priv; } ;
typedef  TYPE_1__ pcap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2(pcap_t *p)
{
	struct pcap_ng_sf *ps = p->priv;

	FUNC0(ps->ifaces);
	FUNC1(p);
}