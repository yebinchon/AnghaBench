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
typedef  int /*<<< orphan*/  uint64_t ;
struct pt_conf_addr_filter {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pt_conf_addr_filter const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct pt_conf_addr_filter const*,int /*<<< orphan*/ ) ; 

int FUNC2(const struct pt_conf_addr_filter *filter,
			 uint64_t addr)
{
	int status;

	status = FUNC1(filter, addr);
	if (status <= 0)
		return status;

	return FUNC0(filter, addr);
}