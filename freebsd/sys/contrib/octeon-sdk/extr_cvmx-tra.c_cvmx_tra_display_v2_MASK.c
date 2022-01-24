#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  u64; } ;
typedef  TYPE_2__ cvmx_trax_ctl_t ;
struct TYPE_7__ {scalar_t__ valid; } ;
struct TYPE_9__ {TYPE_1__ cmn2; } ;
typedef  TYPE_3__ cvmx_tra_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int _cvmx_tra_unit ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__,TYPE_3__) ; 
 TYPE_3__ FUNC3 (int) ; 

void FUNC4(int tra_unit)
{
    int valid = 0;

    cvmx_trax_ctl_t tra_ctl;
    cvmx_tra_data_t data;

    valid = 0;
    tra_ctl.u64 = FUNC1(FUNC0(tra_unit));

    do 
    {
        data = FUNC3(tra_unit);
        if (data.cmn2.valid)
        {
            _cvmx_tra_unit = tra_unit; 
            FUNC2(tra_ctl, data);
            valid = 1;
        }
    } while (valid);
}