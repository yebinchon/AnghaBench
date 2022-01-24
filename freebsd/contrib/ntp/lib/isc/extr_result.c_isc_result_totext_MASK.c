#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ base; scalar_t__ last; char** text; int /*<<< orphan*/  set; int /*<<< orphan*/  msgcat; } ;
typedef  TYPE_1__ resulttable ;
typedef  scalar_t__ isc_result_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISC_RESULT_UNAVAILABLESET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  isc_msgcat ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char const*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  tables ; 

const char *
FUNC6(isc_result_t result) {
	resulttable *table;
	const char *txt, *default_text;
	int idx;

	FUNC4();

	FUNC2(&lock);

	txt = NULL;
	for (table = FUNC0(tables);
	     table != NULL;
	     table = FUNC1(table, link)) {
		if (result >= table->base && result <= table->last) {
			idx = (int)(result - table->base);
			default_text = table->text[idx];
			/*
			 * Note: we use 'idx + 1' as the message number
			 * instead of idx because isc_msgcat_get() requires
			 * the message number to be > 0.
			 */
			txt = FUNC5(table->msgcat, table->set,
					     idx + 1, default_text);
			break;
		}
	}
	if (txt == NULL)
		txt = FUNC5(isc_msgcat, ISC_RESULT_UNAVAILABLESET,
				     1, "(result code text not available)");

	FUNC3(&lock);

	return (txt);
}