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
struct TYPE_3__ {int /*<<< orphan*/  spa_state; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  pool_state_t ;

/* Variables and functions */

pool_state_t
FUNC0(spa_t *spa)
{
	return (spa->spa_state);
}