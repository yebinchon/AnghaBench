#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int adh_reset; int /*<<< orphan*/  adh_directory; int /*<<< orphan*/  adh_trail_offset; int /*<<< orphan*/  adh_trail_name; int /*<<< orphan*/ * adh_remote; } ;

/* Variables and functions */
 TYPE_1__* adhost ; 
 int /*<<< orphan*/  adist_remote_cond ; 
 int /*<<< orphan*/  adist_remote_mtx ; 
 int /*<<< orphan*/  adist_trail ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static bool
FUNC12(void)
{
	bool newfile = false;

	FUNC1(&adist_remote_mtx);
	if (adhost->adh_reset) {
reset:
		adhost->adh_reset = false;
		if (FUNC5(adist_trail) != -1)
			FUNC4(adist_trail);
		FUNC8(adist_trail);
		while (adhost->adh_remote == NULL)
			FUNC0(&adist_remote_cond, &adist_remote_mtx);
		FUNC9(adist_trail, adhost->adh_trail_name,
		    adhost->adh_trail_offset);
		newfile = true;
	}
	FUNC2(&adist_remote_mtx);
	while (FUNC5(adist_trail) == -1) {
		newfile = true;
		FUNC10();
		/*
		 * We may have been disconnected and reconnected in the
		 * meantime, check if reset is set.
		 */
		FUNC1(&adist_remote_mtx);
		if (adhost->adh_reset)
			goto reset;
		FUNC2(&adist_remote_mtx);
		if (FUNC5(adist_trail) == -1)
			FUNC7(adist_trail);
	}
	if (newfile) {
		FUNC3(1, "Trail file \"%s/%s\" opened.",
		    adhost->adh_directory,
		    FUNC6(adist_trail));
		(void)FUNC11(FUNC5(adist_trail));
	}
	return (newfile);
}