#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int /*<<< orphan*/  val ;
struct TYPE_3__ {int /*<<< orphan*/ * fbtp_patchpoint; } ;
typedef  TYPE_1__ fbt_probe_t ;
typedef  int /*<<< orphan*/  fbt_patchval_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

void
FUNC1(fbt_probe_t *fbt, fbt_patchval_t val)
{

	*fbt->fbtp_patchpoint = val;
	FUNC0((vm_offset_t)fbt->fbtp_patchpoint, sizeof(val));
}