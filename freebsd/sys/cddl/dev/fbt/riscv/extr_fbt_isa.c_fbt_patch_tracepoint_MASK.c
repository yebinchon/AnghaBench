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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {int fbtp_patchval; int /*<<< orphan*/ * fbtp_patchpoint; } ;
typedef  TYPE_1__ fbt_probe_t ;
typedef  int /*<<< orphan*/  fbt_patchval_t ;

/* Variables and functions */
#define  FBT_C_PATCHVAL 129 
#define  FBT_PATCHVAL 128 
 int /*<<< orphan*/  FUNC0 () ; 

void
FUNC1(fbt_probe_t *fbt, fbt_patchval_t val)
{

	switch(fbt->fbtp_patchval) {
	case FBT_C_PATCHVAL:
		*(uint16_t *)fbt->fbtp_patchpoint = (uint16_t)val;
		FUNC0();
		break;
	case FBT_PATCHVAL:
		*fbt->fbtp_patchpoint = val;
		FUNC0();
		break;
	};
}