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
struct cvmx_power_throttle_rfield_t {int pos; int /*<<< orphan*/  len; int /*<<< orphan*/  present; } ;
typedef  size_t cvmx_power_throttle_field_index_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 size_t CVMX_PTH_INDEX_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct cvmx_power_throttle_rfield_t* cvmx_power_throttle_rfield ; 

uint64_t FUNC2(uint64_t r,
    cvmx_power_throttle_field_index_t i)
{
    uint64_t m;
    struct cvmx_power_throttle_rfield_t *p;

    FUNC1(i < CVMX_PTH_INDEX_MAX);
    p = &cvmx_power_throttle_rfield[i];
    if (!p->present)
        return (uint64_t) -1;
    m = FUNC0(p->len, p->pos);
    
    return((r & m) >> p->pos);
}