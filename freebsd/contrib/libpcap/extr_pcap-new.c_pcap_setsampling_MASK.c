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
struct pcap_samp {int dummy; } ;
struct TYPE_3__ {struct pcap_samp rmt_samp; } ;
typedef  TYPE_1__ pcap_t ;

/* Variables and functions */

struct pcap_samp *FUNC0(pcap_t *p)
{
	return &p->rmt_samp;
}