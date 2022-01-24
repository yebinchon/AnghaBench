#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  work_item_baton_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
struct TYPE_8__ {struct TYPE_8__* next; int /*<<< orphan*/  len; int /*<<< orphan*/  data; TYPE_1__* children; } ;
typedef  TYPE_2__ svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_7__ {TYPE_2__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const**,int /*<<< orphan*/ *,char const*,TYPE_2__ const*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const**,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(work_item_baton_t *wqb,
                 svn_wc__db_t *db,
                 const svn_skel_t *work_item,
                 const char *wri_abspath,
                 svn_cancel_func_t cancel_func,
                 void *cancel_baton,
                 apr_pool_t *scratch_pool)
{
  const svn_skel_t *arg1 = work_item->children->next;
  const char *local_relpath;
  const char *local_abspath;
  svn_skel_t *conflicts;
  const svn_skel_t *prop_conflict_skel;
  const char *tmp_prejfile_abspath;
  const char *prejfile_abspath;

  local_relpath = FUNC1(scratch_pool, arg1->data, arg1->len);
  FUNC0(FUNC5(&local_abspath, db, wri_abspath,
                                  local_relpath, scratch_pool, scratch_pool));

  FUNC0(FUNC6(&conflicts, NULL, NULL, db, local_abspath,
                                   scratch_pool, scratch_pool));

  FUNC0(FUNC3(&prejfile_abspath,
                                              NULL, NULL, NULL, NULL,
                                              db, local_abspath, conflicts,
                                              scratch_pool, scratch_pool));

  if (arg1->next != NULL)
    prop_conflict_skel = arg1->next; /* Before Subversion 1.9 */
  else
    prop_conflict_skel = NULL; /* Read from DB */

  /* Construct a property reject file in the temporary area.  */
  FUNC0(FUNC4(&tmp_prejfile_abspath,
                                  db, local_abspath,
                                  prop_conflict_skel,
                                  cancel_func, cancel_baton,
                                  scratch_pool, scratch_pool));

  /* ... and atomically move it into place.  */
  FUNC0(FUNC2(tmp_prejfile_abspath,
                              prejfile_abspath, FALSE,
                              scratch_pool));

  return SVN_NO_ERROR;
}