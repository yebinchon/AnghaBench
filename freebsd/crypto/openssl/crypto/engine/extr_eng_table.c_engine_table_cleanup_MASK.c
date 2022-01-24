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
struct TYPE_3__ {int /*<<< orphan*/  piles; } ;
typedef  TYPE_1__ ENGINE_TABLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  global_engine_lock ; 
 int /*<<< orphan*/  int_cleanup_cb_doall ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(ENGINE_TABLE **table)
{
    FUNC1(global_engine_lock);
    if (*table) {
        FUNC2(&(*table)->piles, int_cleanup_cb_doall);
        FUNC3(&(*table)->piles);
        *table = NULL;
    }
    FUNC0(global_engine_lock);
}