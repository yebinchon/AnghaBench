#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_longlong_t ;
struct TYPE_10__ {scalar_t__ ub_txg; } ;
struct TYPE_11__ {int spa_mode; scalar_t__ spa_load_max_txg; TYPE_1__ spa_uberblock; } ;
typedef  TYPE_2__ spa_t ;
typedef  int /*<<< orphan*/  spa_load_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  SPA_IMPORT_EXISTING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC6(spa_t *spa, spa_load_state_t state)
{
	int mode = spa->spa_mode;

	FUNC5(spa);
	FUNC2(spa);

	spa->spa_load_max_txg = spa->spa_uberblock.ub_txg - 1;

	FUNC0(spa, mode);
	FUNC1(spa);

	FUNC4(spa, "spa_load_retry: rewind, max txg: %llu",
	    (u_longlong_t)spa->spa_load_max_txg);

	return (FUNC3(spa, state, SPA_IMPORT_EXISTING));
}