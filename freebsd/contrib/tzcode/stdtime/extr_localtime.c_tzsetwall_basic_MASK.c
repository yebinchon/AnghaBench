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
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int lcl_is_set ; 
 int /*<<< orphan*/  lcl_rwlock ; 
 int /*<<< orphan*/ * lclptr ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(int rdlocked)
{
	if (!rdlocked)
		FUNC0(&lcl_rwlock);
	if (lcl_is_set < 0) {
		if (!rdlocked)
			FUNC1(&lcl_rwlock);
		return;
	}
	FUNC1(&lcl_rwlock);

	FUNC2(&lcl_rwlock);
	lcl_is_set = -1;

#ifdef ALL_STATE
	if (lclptr == NULL) {
		lclptr = calloc(1, sizeof *lclptr);
		if (lclptr == NULL) {
			settzname();	/* all we can do */
			_RWLOCK_UNLOCK(&lcl_rwlock);
			if (rdlocked)
				_RWLOCK_RDLOCK(&lcl_rwlock);
			return;
		}
	}
#endif /* defined ALL_STATE */
	if (FUNC6((char *) NULL, lclptr, TRUE) != 0)
		FUNC4(lclptr);
	FUNC5();
	FUNC1(&lcl_rwlock);

	if (rdlocked)
		FUNC0(&lcl_rwlock);
}