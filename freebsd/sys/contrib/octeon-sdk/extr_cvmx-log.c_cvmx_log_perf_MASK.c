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

/* Variables and functions */
 int /*<<< orphan*/  CVMX_LOG_TYPE_PERF ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(void)
{
    uint64_t control1;
    uint64_t control2;
    uint64_t data1;
    uint64_t data2;
    asm ("dmfc0 %0, $25, 1\n" : "=r"(data1));
    asm ("dmfc0 %0, $25, 3\n" : "=r"(data2));
    asm ("mfc0 %0, $25, 0\n" : "=r"(control1));
    asm ("mfc0 %0, $25, 2\n" : "=r"(control2));
    FUNC1(FUNC0(CVMX_LOG_TYPE_PERF, 3));
    FUNC1(((control1 & 0xffffffff) << 32) | (control2 & 0xffffffff));
    FUNC1(data1);
    FUNC1(data2);
}