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
struct get_neigh_handler {int /*<<< orphan*/ * found_ll_addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct get_neigh_handler *neigh_handler, void *addr_buff,
		 int addr_size) {
	int neigh_len;

	if (neigh_handler->found_ll_addr == NULL)
		return -EINVAL;

	 neigh_len = FUNC2(neigh_handler->found_ll_addr);

	if (neigh_len > addr_size)
		return -EINVAL;

	FUNC0(addr_buff, FUNC1(neigh_handler->found_ll_addr),
	       neigh_len);

	return neigh_len;
}