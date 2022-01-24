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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  cvmx_fau_tagwait64_t ;
typedef  int /*<<< orphan*/  cvmx_fau_reg_64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline cvmx_fau_tagwait64_t FUNC2(cvmx_fau_reg_64_t reg, int64_t value)
{
    union
    {
        uint64_t i64;
        cvmx_fau_tagwait64_t t;
    } result;
    result.i64 = FUNC1(FUNC0(1, reg, value));
    return result.t;
}