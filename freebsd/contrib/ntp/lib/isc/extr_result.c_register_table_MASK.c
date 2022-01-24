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
struct TYPE_5__ {unsigned int base; unsigned int last; char const** text; int set; int /*<<< orphan*/ * msgcat; } ;
typedef  TYPE_1__ resulttable ;
typedef  int /*<<< orphan*/  isc_result_t ;
typedef  int /*<<< orphan*/  isc_msgcat_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 unsigned int ISC_RESULTCLASS_SIZE ; 
 int /*<<< orphan*/  ISC_R_NOMEMORY ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  lock ; 
 TYPE_1__* FUNC5 (int) ; 
 int /*<<< orphan*/  tables ; 

__attribute__((used)) static isc_result_t
FUNC6(unsigned int base, unsigned int nresults, const char **txt,
	       isc_msgcat_t *msgcat, int set)
{
	resulttable *table;

	FUNC3(base % ISC_RESULTCLASS_SIZE == 0);
	FUNC3(nresults <= ISC_RESULTCLASS_SIZE);
	FUNC3(txt != NULL);

	/*
	 * We use malloc() here because we we want to be able to use
	 * isc_result_totext() even if there is no memory context.
	 */
	table = FUNC5(sizeof(*table));
	if (table == NULL)
		return (ISC_R_NOMEMORY);
	table->base = base;
	table->last = base + nresults - 1;
	table->text = txt;
	table->msgcat = msgcat;
	table->set = set;
	FUNC0(table, link);

	FUNC2(&lock);

	FUNC1(tables, table, link);

	FUNC4(&lock);

	return (ISC_R_SUCCESS);
}