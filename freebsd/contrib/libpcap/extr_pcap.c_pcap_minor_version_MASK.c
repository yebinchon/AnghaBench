#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int version_minor; int /*<<< orphan*/  activated; } ;
typedef  TYPE_1__ pcap_t ;

/* Variables and functions */
 int PCAP_ERROR_NOT_ACTIVATED ; 

int
FUNC0(pcap_t *p)
{
	if (!p->activated)
		return (PCAP_ERROR_NOT_ACTIVATED);
	return (p->version_minor);
}