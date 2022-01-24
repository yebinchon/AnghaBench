#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_wc_conflict_version_t ;
struct TYPE_12__ {struct TYPE_12__* children; TYPE_1__* next; } ;
typedef  TYPE_2__ svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_11__ {int /*<<< orphan*/  is_atom; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_WC__CONFLICT_OP_MERGE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC7(svn_skel_t *conflict_skel,
                                   const svn_wc_conflict_version_t *left,
                                   const svn_wc_conflict_version_t *right,
                                   apr_pool_t *result_pool,
                                   apr_pool_t *scratch_pool)
{
  svn_skel_t *why;
  svn_skel_t *origins;

  FUNC1(conflict_skel
                 && conflict_skel->children
                 && conflict_skel->children->next
                 && !conflict_skel->children->next->is_atom);

  FUNC0(FUNC2(&why, conflict_skel));

  FUNC1(why == NULL); /* No operation set */

  why = conflict_skel->children;

  origins = FUNC4(result_pool);

  FUNC0(FUNC3(origins, right, TRUE,
                                     result_pool, scratch_pool));

  FUNC0(FUNC3(origins, left, TRUE,
                                     result_pool, scratch_pool));

  FUNC5(origins, why);
  FUNC6(SVN_WC__CONFLICT_OP_MERGE, why, result_pool);

  return SVN_NO_ERROR;
}