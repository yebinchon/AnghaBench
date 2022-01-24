#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  spa_l2cache_avl ; 
 int /*<<< orphan*/  spa_l2cache_lock ; 
 int /*<<< orphan*/  spa_namespace_avl ; 
 int /*<<< orphan*/  spa_namespace_cv ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int /*<<< orphan*/  spa_spare_avl ; 
 int /*<<< orphan*/  spa_spare_lock ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 

void
FUNC16(void)
{
	FUNC3();

	FUNC9();

	FUNC12();
	FUNC11();
	FUNC14();
	FUNC2();
	FUNC4();
	FUNC15();
	FUNC5();
	FUNC7();
	FUNC10();
	FUNC13();
	FUNC8();
	
	FUNC0(&spa_namespace_avl);
	FUNC0(&spa_spare_avl);
	FUNC0(&spa_l2cache_avl);

	FUNC1(&spa_namespace_cv);
	FUNC6(&spa_namespace_lock);
	FUNC6(&spa_spare_lock);
	FUNC6(&spa_l2cache_lock);
}