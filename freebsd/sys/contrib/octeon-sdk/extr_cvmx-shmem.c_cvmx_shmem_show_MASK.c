#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  __CHECK_APP_SMDR ; 
 int /*<<< orphan*/  __cvmx_shmem_smdr_display_dscptr ; 
 TYPE_1__* __smdr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(void)
{
    __CHECK_APP_SMDR;

#ifdef DEBUG
    cvmx_dprintf("SMDR descriptor list: \n");
    cvmx_spinlock_lock(&__smdr->lock);
    __smdr_iterator(__cvmx_shmem_smdr_display_dscptr, NULL);
    cvmx_spinlock_unlock(&__smdr->lock);
    cvmx_dprintf("\n\n");
#endif
}