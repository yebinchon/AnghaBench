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
typedef  int uint32_t ;
struct ctl_lun {int /*<<< orphan*/ ** pending_ua; int /*<<< orphan*/  lun_lock; } ;
typedef  int /*<<< orphan*/  ctl_ua_type ;

/* Variables and functions */
 int CTL_MAX_INIT_PER_PORT ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC1(struct ctl_lun *lun, int port, uint32_t except, ctl_ua_type ua)
{
	int i;

	FUNC0(&lun->lun_lock, MA_OWNED);
	if (lun->pending_ua[port] == NULL)
		return;
	for (i = 0; i < CTL_MAX_INIT_PER_PORT; i++) {
		if (port * CTL_MAX_INIT_PER_PORT + i == except)
			continue;
		lun->pending_ua[port][i] |= ua;
	}
}