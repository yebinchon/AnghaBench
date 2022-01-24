#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char const* abspath; scalar_t__ sdb; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
struct TYPE_7__ {int /*<<< orphan*/ * state_pool; int /*<<< orphan*/ * dir_data; } ;
typedef  TYPE_2__ svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(svn_wc__db_t *db)
{
  apr_pool_t *scratch_pool = db->state_pool;
  apr_hash_t *roots = FUNC1(scratch_pool);
  apr_hash_index_t *hi;

  /* Collect all the unique WCROOT structures, and empty out DIR_DATA.  */
  for (hi = FUNC0(scratch_pool, db->dir_data);
       hi;
       hi = FUNC2(hi))
    {
      svn_wc__db_wcroot_t *wcroot = FUNC4(hi);
      const char *local_abspath = FUNC3(hi);

      if (wcroot->sdb)
        FUNC6(roots, wcroot->abspath, wcroot);

      FUNC6(db->dir_data, local_abspath, NULL);
    }

  /* Run the cleanup for each WCROOT.  */
  return FUNC5(FUNC7(roots, db->state_pool,
                                                       scratch_pool));
}