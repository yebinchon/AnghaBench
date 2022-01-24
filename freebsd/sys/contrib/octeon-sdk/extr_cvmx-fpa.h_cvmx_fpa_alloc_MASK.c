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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  CVMX_OCT_DID_FPA ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 void* FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static inline void *FUNC7(uint64_t pool)
{
    uint64_t address;

    for (;;) {
        address = FUNC5(FUNC0(FUNC2(CVMX_OCT_DID_FPA,pool)));
        if (FUNC3(address)) {
            return FUNC4(address);
        } else {
	   /* If pointers are available, continuously retry.  */
           if (FUNC5(FUNC1(pool)) > 0)
               FUNC6(50);
           else
               return NULL;
	}
    }
}