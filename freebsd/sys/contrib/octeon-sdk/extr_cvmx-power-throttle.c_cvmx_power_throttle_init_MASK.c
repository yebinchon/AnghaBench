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
struct cvmx_power_throttle_rfield_t {int present; int pos; int len; } ;

/* Variables and functions */
 size_t CVMX_PTH_INDEX_HRMPOWADJ ; 
 int CVMX_PTH_INDEX_MAX ; 
 size_t CVMX_PTH_INDEX_OVRRD ; 
 size_t CVMX_PTH_INDEX_RESERVED ; 
 int /*<<< orphan*/  OCTEON_CN63XX ; 
 int /*<<< orphan*/  OCTEON_CN6XXX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct cvmx_power_throttle_rfield_t* cvmx_power_throttle_rfield ; 

__attribute__((used)) static void FUNC1(void)
{
    /*
     * Turn on the fields for a model
     */
    if (FUNC0(OCTEON_CN6XXX))
    {
        int i;
	struct cvmx_power_throttle_rfield_t *p;

        for (i = 0; i < CVMX_PTH_INDEX_MAX; i++)
	    cvmx_power_throttle_rfield[i].present = 1;

        if (FUNC0(OCTEON_CN63XX))
	{
	    /*
	     * These fields do not come with o63
	     */
	    p = &cvmx_power_throttle_rfield[CVMX_PTH_INDEX_HRMPOWADJ];
	    p->present = 0;
	    p = &cvmx_power_throttle_rfield[CVMX_PTH_INDEX_OVRRD];
	    p->present = 0;
	}
	else
	{
	    /*
	     * The reserved field shrinks in models newer than o63
	     */
	    p = &cvmx_power_throttle_rfield[CVMX_PTH_INDEX_RESERVED];
	    p->pos = 29;
	    p->len = 3;
	}
    }
}