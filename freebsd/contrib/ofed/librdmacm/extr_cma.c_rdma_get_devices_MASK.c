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
struct ibv_context {int dummy; } ;
struct TYPE_2__ {struct ibv_context* verbs; } ;

/* Variables and functions */
 TYPE_1__* cma_dev_array ; 
 int cma_dev_cnt ; 
 struct ibv_context** FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 

struct ibv_context **FUNC2(int *num_devices)
{
	struct ibv_context **devs = NULL;
	int i;

	if (FUNC1())
		goto out;

	devs = FUNC0(sizeof(*devs) * (cma_dev_cnt + 1));
	if (!devs)
		goto out;

	for (i = 0; i < cma_dev_cnt; i++)
		devs[i] = cma_dev_array[i].verbs;
	devs[i] = NULL;
out:
	if (num_devices)
		*num_devices = devs ? cma_dev_cnt : 0;
	return devs;
}