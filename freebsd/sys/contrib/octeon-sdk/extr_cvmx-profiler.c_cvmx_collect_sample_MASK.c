#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  events; } ;
struct TYPE_4__ {TYPE_1__ cfg_blk; int /*<<< orphan*/  read_cfg_blk; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_PERCPU_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ eccb ; 
 scalar_t__ read_percpu_block ; 

void FUNC5(void)
{
    if (!eccb.read_cfg_blk)
        FUNC3();

    if (read_percpu_block)
        FUNC2(FUNC1(), EVENT_PERCPU_BUFFER_SIZE);

    FUNC0();
    FUNC4(0, eccb.cfg_blk.events);
}