#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* datahi; void* data; } ;
struct TYPE_5__ {TYPE_1__ u128; } ;
typedef  TYPE_2__ cvmx_tra_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

cvmx_tra_data_t FUNC3(int tra_unit)
{
    cvmx_tra_data_t result;

    result.u128.data = FUNC2(FUNC0(tra_unit));
    result.u128.datahi = FUNC2(FUNC1(tra_unit));

    return result;
}