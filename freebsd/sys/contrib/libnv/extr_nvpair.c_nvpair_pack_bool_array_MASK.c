#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ nvp_type; size_t nvp_datasize; scalar_t__ nvp_data; } ;
typedef  TYPE_1__ nvpair_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 scalar_t__ NV_TYPE_BOOL_ARRAY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,void const*,size_t) ; 

unsigned char *
FUNC3(const nvpair_t *nvp, unsigned char *ptr, size_t *leftp)
{

	FUNC0(nvp);
	FUNC1(nvp->nvp_type == NV_TYPE_BOOL_ARRAY);
	FUNC1(*leftp >= nvp->nvp_datasize);

	FUNC2(ptr, (const void *)(intptr_t)nvp->nvp_data, nvp->nvp_datasize);
	ptr += nvp->nvp_datasize;
	*leftp -= nvp->nvp_datasize;

	return (ptr);
}