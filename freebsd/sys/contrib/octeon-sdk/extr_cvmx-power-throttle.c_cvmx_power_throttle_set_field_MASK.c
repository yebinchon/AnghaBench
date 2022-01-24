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
typedef  int uint64_t ;
struct cvmx_power_throttle_rfield_t {int pos; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int CVMX_PTH_INDEX_MAX ; 
 int /*<<< orphan*/  OCTEON_CN6XXX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct cvmx_power_throttle_rfield_t* cvmx_power_throttle_rfield ; 

__attribute__((used)) static int FUNC3(int i, uint64_t r, uint64_t v)
{
    if (FUNC1(OCTEON_CN6XXX))
    {
        uint64_t m;
        struct cvmx_power_throttle_rfield_t *p;

        FUNC2(i < CVMX_PTH_INDEX_MAX);

        p = &cvmx_power_throttle_rfield[i];
        m = FUNC0(p->len, p->pos);

        return((~m & r) | ((v << p->pos) & m));
    }
    return 0;
}