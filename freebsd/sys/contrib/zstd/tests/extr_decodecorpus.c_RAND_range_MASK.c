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
typedef  int U32 ;

/* Variables and functions */
 int FUNC0 (int*) ; 

__attribute__((used)) static inline U32 FUNC1(U32* seed, U32 min, U32 max)
{
    return (FUNC0(seed) % (max-min)) + min;
}