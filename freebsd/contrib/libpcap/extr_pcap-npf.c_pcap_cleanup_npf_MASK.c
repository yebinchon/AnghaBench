#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pcap_win {scalar_t__ rfmon_selfstart; int /*<<< orphan*/ * adapter; } ;
struct TYPE_5__ {int /*<<< orphan*/  device; } ;
struct TYPE_6__ {TYPE_1__ opt; struct pcap_win* priv; } ;
typedef  TYPE_2__ pcap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC3(pcap_t *p)
{
	struct pcap_win *pw = p->priv;

	if (pw->adapter != NULL) {
		FUNC0(pw->adapter);
		pw->adapter = NULL;
	}
	if (pw->rfmon_selfstart)
	{
		FUNC1(p->opt.device, 0);
	}
	FUNC2(p);
}