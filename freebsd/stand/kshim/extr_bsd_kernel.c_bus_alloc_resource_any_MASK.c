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
struct resource_i {int dummy; } ;
struct resource {struct resource* __r_i; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  XXX ; 
 int FUNC0 (struct resource*,int /*<<< orphan*/ ,int,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct resource*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct resource*,int /*<<< orphan*/ ,int,int*,unsigned int) ; 

struct resource *
FUNC4(device_t dev, int type, int *rid, unsigned int flags)
{
	struct resource *res;
	int ret = EINVAL;

	res = FUNC2(sizeof(*res), XXX, XXX);
	if (res == NULL)
		return (NULL);

	res->__r_i = FUNC2(sizeof(struct resource_i), XXX, XXX);
	if (res->__r_i == NULL) {
		FUNC1(res, XXX);
		return (NULL);
	}

	if (&bus_alloc_resource_any_cb != NULL)
		ret = FUNC0)(res, dev, type, rid, flags);
	if (ret == 0)
		return (res);

	FUNC1(res->__r_i, XXX);
	FUNC1(res, XXX);
	return (NULL);
}