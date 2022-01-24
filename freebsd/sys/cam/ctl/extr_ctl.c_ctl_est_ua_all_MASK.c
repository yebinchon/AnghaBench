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
typedef  int /*<<< orphan*/  uint32_t ;
struct ctl_softc {int port_min; int port_max; } ;
struct ctl_lun {int /*<<< orphan*/  lun_lock; struct ctl_softc* ctl_softc; } ;
typedef  int /*<<< orphan*/  ctl_ua_type ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct ctl_lun*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2(struct ctl_lun *lun, uint32_t except, ctl_ua_type ua)
{
	struct ctl_softc *softc = lun->ctl_softc;
	int i;

	FUNC1(&lun->lun_lock, MA_OWNED);
	for (i = softc->port_min; i < softc->port_max; i++)
		FUNC0(lun, i, except, ua);
}