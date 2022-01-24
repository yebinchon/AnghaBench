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
struct TYPE_4__ {scalar_t__ base; int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ escrypt_region_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

int
FUNC3(escrypt_region_t *region)
{
    if (region->base) {
#if defined(MAP_ANON) && defined(HAVE_MMAP)
        if (munmap(region->base, region->size)) {
            return -1; /* LCOV_EXCL_LINE */
        }
#else
        FUNC0(region->base);
#endif
    }
    FUNC1(region);

    return 0;
}