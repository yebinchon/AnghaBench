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
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_element__content_t ;
typedef  int /*<<< orphan*/  svn_branch__repos_t ;
struct TYPE_4__ {int eid; int /*<<< orphan*/  branch; int /*<<< orphan*/  rev; } ;
typedef  TYPE_1__ svn_branch__el_rev_id_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC4(svn_branch__el_rev_id_t **el_rev_p,
                                    const svn_branch__repos_t *repos,
                                    svn_revnum_t revnum,
                                    const char *branch_id,
                                    int eid,
                                    apr_pool_t *result_pool,
                                    apr_pool_t *scratch_pool)
{
  svn_branch__el_rev_id_t *el_rev = FUNC1(result_pool, sizeof(*el_rev));
  svn_element__content_t *element;

  el_rev->rev = revnum;
  FUNC0(FUNC2(&el_rev->branch,
                                             repos, revnum, branch_id,
                                             scratch_pool));
  FUNC0(FUNC3(el_rev->branch, &element,
                                        eid, scratch_pool));
  if (element)
    {
      el_rev->eid = eid;
    }
  else
    {
      el_rev->eid = -1;
    }
  *el_rev_p = el_rev;
  return SVN_NO_ERROR;
}