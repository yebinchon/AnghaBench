#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  work_item_baton_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_subst_eol_style_t ;
struct TYPE_9__ {TYPE_3__* next; int /*<<< orphan*/  len; int /*<<< orphan*/  data; TYPE_1__* children; } ;
typedef  TYPE_4__ svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_8__ {TYPE_2__* next; int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_7__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct TYPE_6__ {TYPE_4__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const**,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC5(work_item_baton_t *wqb,
                         svn_wc__db_t *db,
                         const svn_skel_t *work_item,
                         const char *wri_abspath,
                         svn_cancel_func_t cancel_func,
                         void *cancel_baton,
                         apr_pool_t *scratch_pool)
{
  const svn_skel_t *arg1 = work_item->children->next;
  const char *local_abspath, *src_abspath, *dst_abspath;
  const char *local_relpath;
  svn_subst_eol_style_t style;
  const char *eol;
  apr_hash_t *keywords;
  svn_boolean_t special;

  local_relpath = FUNC1(scratch_pool, arg1->data, arg1->len);
  FUNC0(FUNC3(&local_abspath, db, wri_abspath,
                                  local_relpath, scratch_pool, scratch_pool));

  local_relpath = FUNC1(scratch_pool, arg1->next->data,
                               arg1->next->len);
  FUNC0(FUNC3(&src_abspath, db, wri_abspath,
                                  local_relpath, scratch_pool, scratch_pool));

  local_relpath = FUNC1(scratch_pool, arg1->next->next->data,
                                arg1->next->next->len);
  FUNC0(FUNC3(&dst_abspath, db, wri_abspath,
                                  local_relpath, scratch_pool, scratch_pool));

  FUNC0(FUNC4(&style, &eol,
                                     &keywords,
                                     &special,
                                     db, local_abspath, NULL, FALSE,
                                     scratch_pool, scratch_pool));

  FUNC0(FUNC2(src_abspath, dst_abspath,
                                        eol, TRUE /* repair */,
                                        keywords, TRUE /* expand */,
                                        special,
                                        cancel_func, cancel_baton,
                                        scratch_pool));
  return SVN_NO_ERROR;
}