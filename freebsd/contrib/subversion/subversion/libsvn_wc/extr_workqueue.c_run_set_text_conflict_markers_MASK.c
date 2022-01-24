#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  work_item_baton_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
struct TYPE_10__ {scalar_t__ len; int /*<<< orphan*/  data; struct TYPE_10__* next; TYPE_1__* children; } ;
typedef  TYPE_2__ svn_skel_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_9__ {TYPE_2__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,char const*,char const*,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char const**,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(work_item_baton_t *wqb,
                              svn_wc__db_t *db,
                              const svn_skel_t *work_item,
                              const char *wri_abspath,
                              svn_cancel_func_t cancel_func,
                              void *cancel_baton,
                              apr_pool_t *scratch_pool)
{
  const svn_skel_t *arg = work_item->children->next;
  const char *local_relpath;
  const char *local_abspath;
  const char *old_abspath = NULL;
  const char *new_abspath = NULL;
  const char *wrk_abspath = NULL;

  local_relpath = FUNC1(scratch_pool, arg->data, arg->len);
  FUNC0(FUNC5(&local_abspath, db, wri_abspath,
                                  local_relpath, scratch_pool, scratch_pool));

  arg = arg->next;
  local_relpath = arg->len ? FUNC1(scratch_pool, arg->data, arg->len)
                           : NULL;

  if (local_relpath)
    {
      FUNC0(FUNC5(&old_abspath, db, wri_abspath,
                                      local_relpath,
                                      scratch_pool, scratch_pool));
    }

  arg = arg->next;
  local_relpath = arg->len ? FUNC1(scratch_pool, arg->data, arg->len)
                           : NULL;
  if (local_relpath)
    {
      FUNC0(FUNC5(&new_abspath, db, wri_abspath,
                                      local_relpath,
                                      scratch_pool, scratch_pool));
    }

  arg = arg->next;
  local_relpath = arg->len ? FUNC1(scratch_pool, arg->data, arg->len)
                           : NULL;

  if (local_relpath)
    {
      FUNC0(FUNC5(&wrk_abspath, db, wri_abspath,
                                      local_relpath,
                                      scratch_pool, scratch_pool));
    }

  /* Upgrade scenario: We have a workqueue item that describes how to install a
     non skel conflict. Fetch all the information we can to create a new style
     conflict. */
  /* ### Before format 30 this is/was a common code path as we didn't install
     ### the conflict directly in the db. It just calls the wc_db code
     ### to set the right fields. */

  {
    /* Check if we should combine with a property conflict... */
    svn_skel_t *conflicts;

    FUNC0(FUNC7(&conflicts, NULL, NULL, db, local_abspath,
                                     scratch_pool, scratch_pool));

    if (! conflicts)
      {
        /* No conflict exists, create a basic skel */
        conflicts = FUNC3(scratch_pool);

        FUNC0(FUNC4(conflicts, NULL, NULL,
                                                    scratch_pool,
                                                    scratch_pool));
      }

    /* Add the text conflict to the existing onflict */
    FUNC0(FUNC2(conflicts, db,
                                                    local_abspath,
                                                    wrk_abspath,
                                                    old_abspath,
                                                    new_abspath,
                                                    scratch_pool,
                                                    scratch_pool));

    FUNC0(FUNC6(db, local_abspath, conflicts,
                                        NULL, scratch_pool));
  }
  return SVN_NO_ERROR;
}