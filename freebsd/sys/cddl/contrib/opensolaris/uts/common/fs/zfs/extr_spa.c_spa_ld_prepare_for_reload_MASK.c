#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int spa_mode; int spa_async_suspended; } ;
typedef  TYPE_1__ spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3(spa_t *spa)
{
	int mode = spa->spa_mode;
	int async_suspended = spa->spa_async_suspended;

	FUNC2(spa);
	FUNC1(spa);
	FUNC0(spa, mode);

	/*
	 * We save the value of spa_async_suspended as it gets reset to 0 by
	 * spa_unload(). We want to restore it back to the original value before
	 * returning as we might be calling spa_async_resume() later.
	 */
	spa->spa_async_suspended = async_suspended;
}