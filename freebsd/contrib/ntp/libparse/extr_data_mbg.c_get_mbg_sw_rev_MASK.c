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
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  code; } ;
typedef  TYPE_1__ SW_REV ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 

void
FUNC2(
	unsigned char **bufpp,
	SW_REV *sw_revp
	)
{
  sw_revp->code = FUNC0(bufpp);
  FUNC1(sw_revp->name, *bufpp, sizeof(sw_revp->name));
  *bufpp += sizeof(sw_revp->name);
}