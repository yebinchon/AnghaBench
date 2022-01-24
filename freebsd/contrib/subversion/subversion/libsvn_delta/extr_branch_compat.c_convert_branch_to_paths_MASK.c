#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_14__ {int /*<<< orphan*/  e_map; } ;
typedef  TYPE_3__ svn_element__tree_t ;
struct TYPE_15__ {TYPE_1__* payload; } ;
typedef  TYPE_4__ svn_element__content_t ;
struct TYPE_16__ {TYPE_2__* txn; } ;
typedef  TYPE_5__ svn_branch__state_t ;
typedef  int /*<<< orphan*/  svn_branch__el_rev_id_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
struct TYPE_13__ {int /*<<< orphan*/  rev; } ;
struct TYPE_12__ {scalar_t__ is_subbranch_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ *) ; 
 char* FUNC5 (TYPE_5__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_5__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,TYPE_3__**,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC11(apr_hash_t *paths,
                        svn_branch__state_t *branch,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  apr_hash_index_t *hi;
  svn_element__tree_t *elements;

  /* assert(branch is at a sequence point); */

  FUNC0(FUNC7(branch, &elements, scratch_pool));
  for (hi = FUNC2(scratch_pool, elements->e_map);
       hi; hi = FUNC3(hi))
    {
      int eid = FUNC8(hi);
      svn_element__content_t *element = FUNC4(hi);
      const char *rrpath
        = FUNC5(branch, eid, result_pool);
      svn_branch__el_rev_id_t *ba;

      /* A subbranch-root element carries no payload; the corresponding
         inner branch root element will provide the payload for this path. */
      if (element->payload->is_subbranch_root)
        continue;

      /* No other element should exist at this path, given that we avoid
         storing anything for a subbranch-root element. */
      FUNC1(! FUNC9(paths, rrpath));

      /* Fill in the details. */
      ba = FUNC6(branch, eid, branch->txn->rev,
                                        result_pool);
      FUNC10(paths, rrpath, ba);
      /*SVN_DBG(("branch-to-path[%d]: b%s e%d -> %s",
               i, svn_branch__get_id(branch, scratch_pool), eid, rrpath));*/
    }
  return SVN_NO_ERROR;
}