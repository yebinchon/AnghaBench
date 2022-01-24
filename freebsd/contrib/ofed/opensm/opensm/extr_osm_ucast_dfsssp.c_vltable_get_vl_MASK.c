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
struct TYPE_4__ {int num_lids; int /*<<< orphan*/ * vls; } ;
typedef  TYPE_1__ vltable_t ;
typedef  int int64_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  ib_net16_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int32_t FUNC1(vltable_t * vltable, ib_net16_t slid, ib_net16_t dlid)
{
	int64_t ind1 = FUNC0(&slid, vltable);
	int64_t ind2 = FUNC0(&dlid, vltable);

	if (ind1 > -1 && ind2 > -1)
		return (int32_t) (vltable->
				  vls[ind1 + ind2 * vltable->num_lids]);
	else
		return -1;
}