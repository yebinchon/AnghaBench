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

__attribute__((used)) static U32 FUNC1(U32* seedPtr)
{
    if (FUNC0(seedPtr) & 7) return (FUNC0(seedPtr) & 0xF);   /* small length */
    return (FUNC0(seedPtr) & 0x1FF) + 0xF;
}