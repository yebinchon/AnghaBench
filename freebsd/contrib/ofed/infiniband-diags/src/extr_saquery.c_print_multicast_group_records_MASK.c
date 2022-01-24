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
struct sa_handle {int dummy; } ;
struct query_params {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_SA_ATTR_MCRECORD ; 
 int /*<<< orphan*/  dump_multicast_group_record ; 
 int FUNC0 (struct sa_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct query_params*) ; 

__attribute__((used)) static int FUNC1(struct sa_handle * h,
					 struct query_params *p)
{
	return FUNC0(h, IB_SA_ATTR_MCRECORD,
					dump_multicast_group_record, p);
}