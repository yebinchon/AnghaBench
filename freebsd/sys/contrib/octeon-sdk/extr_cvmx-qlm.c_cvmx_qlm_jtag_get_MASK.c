#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_3__ {int start_bit; int stop_bit; } ;
typedef  TYPE_1__ __cvmx_qlm_jtag_field_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (int) ; 
 int FUNC5 () ; 

uint64_t FUNC6(int qlm, int lane, const char *name)
{
    const __cvmx_qlm_jtag_field_t *field = FUNC0(name);
    int qlm_jtag_length = FUNC5();
    int num_lanes = FUNC4(qlm);

    if (!field)
        return 0;

    /* Capture the current settings */
    FUNC1(qlm);
    /* Shift past lanes we don't care about. CN6XXX shifts lane 3 first */
    FUNC3(qlm, qlm_jtag_length * (num_lanes-1-lane));    /* Shift to the start of the field */
    FUNC3(qlm, field->start_bit);
    /* Shift out the value and return it */
    return FUNC2(qlm, field->stop_bit - field->start_bit + 1, 0);
}