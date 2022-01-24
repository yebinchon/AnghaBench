#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  work_item_baton_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
struct TYPE_12__ {scalar_t__ next; int /*<<< orphan*/  len; int /*<<< orphan*/  data; TYPE_1__* children; } ;
typedef  TYPE_2__ svn_skel_t ;
struct TYPE_13__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_3__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_int64_t ;
struct TYPE_11__ {TYPE_2__* next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 TYPE_3__* FUNC6 (TYPE_3__*) ; 
 TYPE_3__* FUNC7 (char const*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC8 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const**,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC11(work_item_baton_t *wqb,
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
  svn_boolean_t recursive;

  local_relpath = FUNC4(scratch_pool, arg1->data, arg1->len);
  FUNC2(FUNC10(&local_abspath, db, wri_abspath,
                                  local_relpath, scratch_pool, scratch_pool));

  recursive = FALSE;
  if (arg1->next)
    {
      apr_int64_t val;
      FUNC2(FUNC9(&val, arg1->next, scratch_pool));

      recursive = (val != 0);
    }

  /* Remove the path, no worrying if it isn't there.  */
  if (recursive)
    return FUNC6(
                FUNC8(local_abspath, TRUE,
                                   cancel_func, cancel_baton,
                                   scratch_pool));
  else
    {
      svn_error_t *err;

      err = FUNC7(local_abspath, scratch_pool);

      if (err && (FUNC0(err->apr_err)
                  || FUNC3(err->apr_err)
                  || FUNC1(err->apr_err)))
        {
          FUNC5(err);
          err = NULL;
        }

      return FUNC6(err);
    }
}