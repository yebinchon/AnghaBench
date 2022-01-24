#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct edd_params {int dummy; } ;
struct dsk {int /*<<< orphan*/  drive; } ;
struct TYPE_6__ {int len; int /*<<< orphan*/  sectors; } ;
struct TYPE_5__ {int addr; int eax; int /*<<< orphan*/  efl; int /*<<< orphan*/  esi; int /*<<< orphan*/  ds; int /*<<< orphan*/  edx; int /*<<< orphan*/  ctl; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V86_FLAGS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__ params ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 TYPE_1__ v86 ; 
 int /*<<< orphan*/  FUNC4 () ; 

uint64_t
FUNC5(struct dsk *dskp)
{

	params.len = sizeof(struct edd_params);
	v86.ctl = V86_FLAGS;
	v86.addr = 0x13;
	v86.eax = 0x4800;
	v86.edx = dskp->drive;
	v86.ds = FUNC2(&params);
	v86.esi = FUNC1(&params);
	FUNC4();
	if (FUNC0(v86.efl)) {
		FUNC3("error %u\n", v86.eax >> 8 & 0xff);
		return (0);
	}
	return (params.sectors);
}