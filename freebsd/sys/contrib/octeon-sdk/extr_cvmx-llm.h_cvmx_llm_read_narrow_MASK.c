#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  u64; } ;
typedef  TYPE_1__ cvmx_llm_data_t ;
struct TYPE_6__ {int /*<<< orphan*/  u64; } ;
typedef  TYPE_2__ cvmx_llm_address_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline cvmx_llm_data_t FUNC2(cvmx_llm_address_t address, int set)
{
    cvmx_llm_data_t value;
    if (set)
    {
        FUNC1(1, address.u64);
        FUNC0(1, value.u64);
    }
    else
    {
        FUNC1(0, address.u64);
        FUNC0(0, value.u64);
    }
    return value;
}