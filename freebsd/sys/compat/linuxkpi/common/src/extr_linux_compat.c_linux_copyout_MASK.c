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
 int EFAULT ; 
 int FUNC0 (void const*,void*,size_t) ; 
 scalar_t__ FUNC1 (void**,size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,void const*,size_t) ; 

int
FUNC3(const void *kaddr, void *uaddr, size_t len)
{
	if (FUNC1(&uaddr, len)) {
		if (uaddr == NULL)
			return (-EFAULT);
		FUNC2(uaddr, kaddr, len);
		return (0);
	}
	return (-FUNC0(kaddr, uaddr, len));
}