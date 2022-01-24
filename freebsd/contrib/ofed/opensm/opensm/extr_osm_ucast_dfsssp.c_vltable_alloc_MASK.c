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
struct TYPE_4__ {int num_lids; int /*<<< orphan*/ * vls; int /*<<< orphan*/ * lids; } ;
typedef  TYPE_1__ vltable_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  ib_net16_t ;

/* Variables and functions */
 int /*<<< orphan*/  OSM_DEFAULT_SL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 

__attribute__((used)) static int FUNC3(vltable_t ** vltable, uint64_t size)
{
	/* allocate VL table and indexing array */
	*vltable = (vltable_t *) FUNC0(sizeof(vltable_t));
	if (!(*vltable))
		goto ERROR;
	(*vltable)->num_lids = size;
	(*vltable)->lids = (ib_net16_t *) FUNC0(size * sizeof(ib_net16_t));
	if (!((*vltable)->lids))
		goto ERROR;
	(*vltable)->vls = (uint8_t *) FUNC0(size * size * sizeof(uint8_t));
	if (!((*vltable)->vls))
		goto ERROR;
	FUNC1((*vltable)->vls, OSM_DEFAULT_SL, size * size);

	return 0;

ERROR:
	FUNC2(vltable);

	return 1;
}