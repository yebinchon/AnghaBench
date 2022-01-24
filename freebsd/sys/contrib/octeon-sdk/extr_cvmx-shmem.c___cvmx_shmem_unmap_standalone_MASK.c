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
struct cvmx_shmem_dscptr {int /*<<< orphan*/  vaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC4(struct cvmx_shmem_dscptr *dscptr)
{
    int index;

    index = FUNC3(FUNC0(dscptr->vaddr));

#ifdef DEBUG
    cvmx_dprintf("cmvx-shmem-dbg:"
             "shmem_unmap TLB %d \n", index);
#endif
    FUNC2(index);
}