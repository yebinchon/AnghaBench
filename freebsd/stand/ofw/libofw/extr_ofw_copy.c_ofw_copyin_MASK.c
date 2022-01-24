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
typedef  scalar_t__ vm_offset_t ;
typedef  size_t const ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void const*,void*,size_t const) ; 
 scalar_t__ FUNC1 (scalar_t__,size_t const) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

ssize_t
FUNC3(const void *src, vm_offset_t dest, const size_t len)
{
        if (FUNC1(dest, len)) {
                FUNC2("ofw_copyin: map error\n");
                return (0);
        }

        FUNC0(src, (void *)dest, len);
        return(len);
}