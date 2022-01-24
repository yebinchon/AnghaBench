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
struct TYPE_4__ {int snapshot; } ;
typedef  TYPE_1__ pcap_t ;

/* Variables and functions */
 int PCAP_ERROR_ACTIVATED ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 

int
FUNC1(pcap_t *p, int snaplen)
{
	if (FUNC0(p))
		return (PCAP_ERROR_ACTIVATED);
	p->snapshot = snaplen;
	return (0);
}