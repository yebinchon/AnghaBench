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
typedef  int uint32_t ;

/* Variables and functions */
 int CVMX_TAG_SW_BITS ; 
 int FUNC0 (int) ; 

__attribute__((used)) static inline uint32_t FUNC1(uint64_t tag)
{
    return((tag >> (32 - CVMX_TAG_SW_BITS)) & FUNC0(CVMX_TAG_SW_BITS));
}