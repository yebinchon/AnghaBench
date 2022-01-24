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
typedef  int /*<<< orphan*/  U32 ;

/* Variables and functions */
 unsigned long long FUNC0 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static U32 FUNC1(const UTIL_time_t tStart)
{
    return (U32)(FUNC0(tStart) / 1000000ULL);
}