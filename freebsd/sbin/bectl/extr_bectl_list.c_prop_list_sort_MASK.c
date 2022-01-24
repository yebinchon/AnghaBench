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
typedef  scalar_t__ uint64_t ;
struct sort_column {char* name; char* val; int /*<<< orphan*/  nvl; } ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char**) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 scalar_t__ FUNC9 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC10(nvlist_t *props, char *property, bool reverse)
{
	nvpair_t *nvp;
	nvlist_t *nvl;
	int i, nvp_count;
	uint64_t lval, rval;
	struct sort_column sc_prev, sc_next;

	/* a temporary list to work with */
	FUNC3(props, &nvl, 0);

	nvp_count = FUNC1(nvl);
	for (i = 0; i < nvp_count; i++) {

		nvp = FUNC5(nvl, NULL);
		FUNC7(nvp, &sc_prev.nvl);
		FUNC4(sc_prev.nvl, "name", &sc_prev.name);
		FUNC4(sc_prev.nvl, property, &sc_prev.val);

		while ((nvp = FUNC5(nvl, nvp)) != NULL) {

			FUNC7(nvp, &sc_next.nvl);
			FUNC4(sc_next.nvl, "name", &sc_next.name);
			FUNC4(sc_next.nvl, property, &sc_next.val);

			/* properties that use numerical comparison */
			if (FUNC8(property, "creation") == 0 ||
			    FUNC8(property, "used") == 0 ||
			    FUNC8(property, "usedds") == 0 ||
			    FUNC8(property, "usedsnap") == 0 ||
			    FUNC8(property, "usedrefreserv") == 0) {

				lval = FUNC9(sc_prev.val, NULL, 10);
				rval = FUNC9(sc_next.val, NULL, 10);

				if ((lval < rval && reverse) ||
				    (lval > rval && !reverse))
					sc_prev = sc_next;
			}

			/* properties that use string comparison */
			else if (FUNC8(property, "name") == 0 ||
				 FUNC8(property, "origin") == 0) {
				if ((FUNC8(sc_prev.val, sc_next.val) < 0 && reverse) ||
				    (FUNC8(sc_prev.val, sc_next.val) > 0 && !reverse))
					sc_prev = sc_next;
			}
		}

		/*
		 * The 'props' nvlist has been created to only have unique names.
		 * When a name is added, any existing nvlist's with the same name
		 * will be removed. Eventually, all existing nvlist's are replaced
		 * in sorted order.
		 */
		FUNC2(props, sc_prev.name, sc_prev.nvl);
		FUNC6(nvl, sc_prev.name);
	}

	FUNC0(nvl);

	return 0;
}