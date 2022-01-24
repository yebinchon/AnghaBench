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

/* Variables and functions */
 int /*<<< orphan*/  CVMX_SYNC ; 
 int /*<<< orphan*/  OCTEON_CN6XXX ; 
 int /*<<< orphan*/  OCTEON_CNF7XXX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIM_MAGIC_GET_IOFREQ ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(void)
{
    CVMX_SYNC;

    if (FUNC0(OCTEON_CN6XXX) || FUNC0(OCTEON_CNF7XXX))
       return  FUNC1(SIM_MAGIC_GET_IOFREQ);
    else
       return 0;
}