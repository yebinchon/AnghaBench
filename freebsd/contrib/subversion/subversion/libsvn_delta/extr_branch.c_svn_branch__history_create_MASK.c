#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_branch__rev_bid_t ;
struct TYPE_4__ {int /*<<< orphan*/  parents; } ;
typedef  TYPE_1__ svn_branch__history_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

svn_branch__history_t *
FUNC9(apr_hash_t *parents,
                           apr_pool_t *result_pool)
{
  svn_branch__history_t *history
    = FUNC5(result_pool, sizeof(*history));

  history->parents = FUNC1(result_pool);
  if (parents)
    {
      apr_hash_index_t *hi;

      for (hi = FUNC0(result_pool, parents);
           hi; hi = FUNC2(hi))
        {
          const char *bid = FUNC3(hi);
          svn_branch__rev_bid_t *val = FUNC4(hi);

          FUNC8(history->parents,
                        FUNC6(result_pool, bid),
                        FUNC7(val, result_pool));
        }
    }
  return history;
}