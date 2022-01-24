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
struct pcap_netmap {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  activate_op; } ;
typedef  TYPE_1__ pcap_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char*,int) ; 
 int /*<<< orphan*/  pcap_netmap_activate ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 

pcap_t *
FUNC2(const char *device, char *ebuf, int *is_ours)
{
	pcap_t *p;

	*is_ours = (!FUNC1(device, "netmap:", 7) || !FUNC1(device, "vale", 4));
	if (! *is_ours)
		return NULL;
	p = FUNC0(ebuf, sizeof (struct pcap_netmap));
	if (p == NULL)
		return (NULL);
	p->activate_op = pcap_netmap_activate;
	return (p);
}