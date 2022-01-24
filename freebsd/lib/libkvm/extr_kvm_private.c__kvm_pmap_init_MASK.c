#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ off_t ;
struct TYPE_5__ {int /*<<< orphan*/  program; int /*<<< orphan*/ * page_map; int /*<<< orphan*/  pmfd; scalar_t__ page_map_off; void* page_map_size; } ;
typedef  TYPE_1__ kvm_t ;
typedef  int /*<<< orphan*/  intmax_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*,void*,...) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,void*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,scalar_t__) ; 

int
FUNC3(kvm_t *kd, uint32_t pmap_size, off_t pmap_off)
{
	ssize_t exp_len = pmap_size;

	kd->page_map_size = pmap_size;
	kd->page_map_off = pmap_off;
	kd->page_map = FUNC1(kd, pmap_size);
	if (kd->page_map == NULL) {
		FUNC0(kd, kd->program, "cannot allocate %u bytes "
		    "for page map", pmap_size);
		return (-1);
	}
	if (FUNC2(kd->pmfd, kd->page_map, pmap_size, pmap_off) != exp_len) {
		FUNC0(kd, kd->program, "cannot read %d bytes from "
		    "offset %jd for page map", pmap_size, (intmax_t)pmap_off);
		return (-1);
	}
	return (0);
}