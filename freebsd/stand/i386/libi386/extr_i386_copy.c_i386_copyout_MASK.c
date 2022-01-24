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
 int /*<<< orphan*/  EFBIG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,size_t const) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ const memtop ; 

ssize_t
FUNC2(const vm_offset_t src, void *dest, const size_t len)
{
	if (src + len >= memtop) {
		errno = EFBIG;
		return (-1);
	}

	FUNC1(FUNC0(src), dest, len);
	return (len);
}