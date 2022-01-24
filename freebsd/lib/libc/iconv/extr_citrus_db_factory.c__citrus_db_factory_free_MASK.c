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
struct _citrus_db_factory_entry {int /*<<< orphan*/  de_data; scalar_t__ de_data_free; int /*<<< orphan*/  de_key; scalar_t__ de_key_free; int /*<<< orphan*/  df_entries; } ;
struct _citrus_db_factory {int /*<<< orphan*/  de_data; scalar_t__ de_data_free; int /*<<< orphan*/  de_key; scalar_t__ de_key_free; int /*<<< orphan*/  df_entries; } ;

/* Variables and functions */
 struct _citrus_db_factory_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct _citrus_db_factory_entry* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  de_entry ; 
 int /*<<< orphan*/  FUNC3 (struct _citrus_db_factory_entry*) ; 

void
FUNC4(struct _citrus_db_factory *df)
{
	struct _citrus_db_factory_entry *de;

	while ((de = FUNC0(&df->df_entries)) != NULL) {
		FUNC1(&df->df_entries, de_entry);
		if (de->de_key_free)
			FUNC3(FUNC2(&de->de_key));
		if (de->de_data_free)
			FUNC3(FUNC2(&de->de_data));
		FUNC3(de);
	}
	FUNC3(df);
}