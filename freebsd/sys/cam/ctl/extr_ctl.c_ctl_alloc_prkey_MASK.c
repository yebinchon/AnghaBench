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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
typedef  size_t u_int ;
struct ctl_lun {int /*<<< orphan*/ ** pr_keys; int /*<<< orphan*/  lun_lock; } ;

/* Variables and functions */
 int CTL_MAX_INIT_PER_PORT ; 
 int /*<<< orphan*/  M_CTL ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct ctl_lun *lun, uint32_t residx)
{
	uint64_t *p;
	u_int i;

	i = residx/CTL_MAX_INIT_PER_PORT;
	if (lun->pr_keys[i] != NULL)
		return;
	FUNC3(&lun->lun_lock);
	p = FUNC1(sizeof(uint64_t) * CTL_MAX_INIT_PER_PORT, M_CTL,
	    M_WAITOK | M_ZERO);
	FUNC2(&lun->lun_lock);
	if (lun->pr_keys[i] == NULL)
		lun->pr_keys[i] = p;
	else
		FUNC0(p, M_CTL);
}