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
struct dumptime {int /*<<< orphan*/  dt_value; } ;
struct dumpdates {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 struct dumptime* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct dumptime*,int /*<<< orphan*/ ) ; 
 struct dumptime* FUNC2 (struct dumptime*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC3 (unsigned int,int) ; 
 int /*<<< orphan*/ ** ddatev ; 
 int /*<<< orphan*/  dt_list ; 
 int /*<<< orphan*/  dthead ; 
 int /*<<< orphan*/  FUNC4 (struct dumptime*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int nddates ; 

__attribute__((used)) static void
FUNC6(FILE *df)
{
	int i;
	struct	dumptime *dtwalk;

	for (;;) {
		dtwalk = (struct dumptime *)FUNC3(1, sizeof (struct dumptime));
		if (FUNC5(df, &(dtwalk->dt_value)) < 0) {
			FUNC4(dtwalk);
			break;
		}
		nddates++;
		FUNC1(&dthead, dtwalk, dt_list);
	}

	/*
	 *	arrayify the list, leaving enough room for the additional
	 *	record that we may have to add to the ddate structure
	 */
	ddatev = FUNC3((unsigned) (nddates + 1), sizeof (struct dumpdates *));
	dtwalk = FUNC0(&dthead);
	for (i = nddates - 1; i >= 0; i--, dtwalk = FUNC2(dtwalk, dt_list))
		ddatev[i] = &dtwalk->dt_value;
}