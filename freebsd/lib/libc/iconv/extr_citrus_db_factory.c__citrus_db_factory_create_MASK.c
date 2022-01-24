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
struct _citrus_db_factory {void* df_hashfunc_closure; int /*<<< orphan*/  df_hashfunc; int /*<<< orphan*/  df_entries; scalar_t__ df_total_data_size; scalar_t__ df_total_key_size; scalar_t__ df_num_entries; } ;
typedef  int /*<<< orphan*/  _citrus_db_hash_func_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int errno ; 
 struct _citrus_db_factory* FUNC1 (int) ; 

int
FUNC2(struct _citrus_db_factory **rdf,
    _citrus_db_hash_func_t hashfunc, void *hashfunc_closure)
{
	struct _citrus_db_factory *df;

	df = FUNC1(sizeof(*df));
	if (df == NULL)
		return (errno);
	df->df_num_entries = 0;
	df->df_total_key_size = df->df_total_data_size = 0;
	FUNC0(&df->df_entries);
	df->df_hashfunc = hashfunc;
	df->df_hashfunc_closure = hashfunc_closure;

	*rdf = df;

	return (0);
}