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
struct pcap_stat {scalar_t__ ps_ifdrop; scalar_t__ ps_drop; int /*<<< orphan*/  ps_recv; } ;
struct pcap_dbus {int /*<<< orphan*/  packets_read; } ;
struct TYPE_3__ {struct pcap_dbus* priv; } ;
typedef  TYPE_1__ pcap_t ;

/* Variables and functions */

__attribute__((used)) static int
FUNC0(pcap_t *handle, struct pcap_stat *stats)
{
	struct pcap_dbus *handlep = handle->priv;

	stats->ps_recv = handlep->packets_read;
	stats->ps_drop = 0;
	stats->ps_ifdrop = 0;
	return 0;
}