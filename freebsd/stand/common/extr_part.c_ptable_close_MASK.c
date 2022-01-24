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
struct ptable {int /*<<< orphan*/  entries; } ;
struct pentry {int /*<<< orphan*/  entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct ptable* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ptable*) ; 
 int /*<<< orphan*/  FUNC3 (struct ptable*) ; 

void
FUNC4(struct ptable *table)
{
	struct pentry *entry;

	if (table == NULL)
		return;

	while (!FUNC0(&table->entries)) {
		entry = FUNC1(&table->entries);
		FUNC2(&table->entries, entry);
		FUNC3(entry);
	}
	FUNC3(table);
}