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

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static inline int FUNC2(int chip)
{
    int address_bits = ((FUNC0(chip) + 7) >> 3) << 3;
    address_bits += ((FUNC1(chip) + 7) >> 3) << 3;
    return (address_bits + 7) >> 3;
}