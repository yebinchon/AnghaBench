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
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (int const,void*,size_t const) ; 
 scalar_t__ stage_offset ; 
 scalar_t__ staging_end ; 

ssize_t
FUNC1(const int fd, vm_offset_t dest, const size_t len)
{

	if (dest + stage_offset + len > staging_end) {
		errno = ENOMEM;
		return (-1);
	}
	return (FUNC0(fd, (void *)(dest + stage_offset), len));
}