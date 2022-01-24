#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  kvm_t ;
struct TYPE_2__ {scalar_t__ n_value; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__,void*,size_t) ; 
 TYPE_1__* namelist ; 

__attribute__((used)) static int
FUNC1(kvm_t *kvm, int read_index, void *address, size_t size,
    size_t offset)
{
	ssize_t ret;

	ret = FUNC0(kvm, namelist[read_index].n_value + offset, address, size);
	if (ret < 0 || (size_t)ret != size)
		return (-1);
	return (0);
}