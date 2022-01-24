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
typedef  int /*<<< orphan*/  UTIL_time_t ;
typedef  scalar_t__ U64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ g_clockGranularity ; 

__attribute__((used)) static void FUNC3(void)
{
    UTIL_time_t const clockStart = FUNC2();
    U64 el1 = 0, el2 = 0;
    int i = 0;
    do {
        el1 = el2;
        el2 = FUNC1(clockStart);
        if(el1 < el2) {
            U64 iv = el2 - el1;
            if(g_clockGranularity > iv) {
                g_clockGranularity = iv;
                i = 0;
            } else {
                i++;
            }
        }
    } while(i < 10);
    FUNC0("Granularity: %llu\n", (unsigned long long)g_clockGranularity);
}