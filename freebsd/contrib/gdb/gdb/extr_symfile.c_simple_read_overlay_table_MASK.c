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
struct minimal_symbol {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct minimal_symbol*) ; 
 int cache_novlys ; 
 void* cache_ovly_table ; 
 int /*<<< orphan*/  cache_ovly_table_base ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct minimal_symbol* FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7 (void)
{
  struct minimal_symbol *novlys_msym, *ovly_table_msym;

  FUNC5 ();
  novlys_msym = FUNC2 ("_novlys", NULL, NULL);
  if (! novlys_msym)
    {
      FUNC1 ("Error reading inferior's overlay table: "
             "couldn't find `_novlys' variable\n"
             "in inferior.  Use `overlay manual' mode.");
      return 0;
    }

  ovly_table_msym = FUNC2 ("_ovly_table", NULL, NULL);
  if (! ovly_table_msym)
    {
      FUNC1 ("Error reading inferior's overlay table: couldn't find "
             "`_ovly_table' array\n"
             "in inferior.  Use `overlay manual' mode.");
      return 0;
    }

  cache_novlys = FUNC3 (FUNC0 (novlys_msym), 4);
  cache_ovly_table
    = (void *) FUNC6 (cache_novlys * sizeof (*cache_ovly_table));
  cache_ovly_table_base = FUNC0 (ovly_table_msym);
  FUNC4 (cache_ovly_table_base,
                          (int *) cache_ovly_table,
                          cache_novlys * 4);

  return 1;			/* SUCCESS */
}