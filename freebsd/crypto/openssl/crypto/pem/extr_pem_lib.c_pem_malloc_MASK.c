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
 void* FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 unsigned int PEM_FLAG_SECURE ; 

__attribute__((used)) static void *FUNC2(int num, unsigned int flags)
{
    return (flags & PEM_FLAG_SECURE) ? FUNC1(num)
                                     : FUNC0(num);
}