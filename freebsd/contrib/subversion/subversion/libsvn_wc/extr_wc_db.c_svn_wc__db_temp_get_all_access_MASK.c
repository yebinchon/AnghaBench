#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  access_cache; } ;
typedef  TYPE_1__ svn_wc__db_wcroot_t ;
struct TYPE_6__ {int /*<<< orphan*/  dir_data; } ;
typedef  TYPE_2__ svn_wc__db_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 

apr_hash_t *
FUNC5(svn_wc__db_t *db,
                               apr_pool_t *result_pool)
{
  apr_hash_t *result = FUNC1(result_pool);
  apr_hash_index_t *hi;

  for (hi = FUNC0(result_pool, db->dir_data);
       hi;
       hi = FUNC2(hi))
    {
      const svn_wc__db_wcroot_t *wcroot = FUNC4(hi);

      /* This is highly redundant, 'cause the same WCROOT will appear many
         times in dir_data. */
      result = FUNC3(result_pool, result, wcroot->access_cache);
    }

  return result;
}