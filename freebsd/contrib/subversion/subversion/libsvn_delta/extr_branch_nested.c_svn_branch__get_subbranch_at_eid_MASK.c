#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_error_t ;
struct TYPE_11__ {TYPE_1__* payload; } ;
typedef  TYPE_2__ svn_element__content_t ;
struct TYPE_12__ {int /*<<< orphan*/  txn; } ;
typedef  TYPE_3__ svn_branch__state_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_10__ {scalar_t__ is_subbranch_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__**,int,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC5(svn_branch__state_t *branch,
                                 svn_branch__state_t **subbranch_p,
                                 int eid,
                                 apr_pool_t *scratch_pool)
{
  svn_element__content_t *element;

  FUNC0(FUNC3(branch, &element, eid, scratch_pool));
  if (element && element->payload->is_subbranch_root)
    {
      const char *branch_id = FUNC1(branch, scratch_pool);
      const char *subbranch_id = FUNC2(branch_id, eid,
                                                     scratch_pool);

      *subbranch_p = FUNC4(branch->txn, subbranch_id,
                                                      scratch_pool);
    }
  else
    {
      *subbranch_p = NULL;
    }
  return SVN_NO_ERROR;
}