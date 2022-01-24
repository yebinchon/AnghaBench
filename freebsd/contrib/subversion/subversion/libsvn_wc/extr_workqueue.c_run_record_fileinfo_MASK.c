#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  work_item_baton_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
struct TYPE_5__ {scalar_t__ next; int /*<<< orphan*/  len; int /*<<< orphan*/  data; TYPE_1__* children; } ;
typedef  TYPE_2__ svn_skel_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  scalar_t__ apr_time_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  scalar_t__ apr_int64_t ;
struct TYPE_4__ {TYPE_2__* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_file ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const**,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC8(work_item_baton_t *wqb,
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
  apr_time_t set_time = 0;

  local_relpath = FUNC1(scratch_pool, arg1->data, arg1->len);

  FUNC0(FUNC7(&local_abspath, db, wri_abspath,
                                  local_relpath, scratch_pool, scratch_pool));

  if (arg1->next)
    {
      apr_int64_t val;

      FUNC0(FUNC6(&val, arg1->next, scratch_pool));
      set_time = (apr_time_t)val;
    }

  if (set_time != 0)
    {
      svn_node_kind_t kind;
      svn_boolean_t is_special;

      /* Do not set the timestamp on special files. */
      FUNC0(FUNC4(local_abspath, &kind, &is_special,
                                        scratch_pool));

      /* Don't set affected time when local_abspath does not exist or is
         a special file */
      if (kind == svn_node_file && !is_special)
        FUNC0(FUNC5(set_time, local_abspath,
                                              scratch_pool));

      /* Note that we can't use the value we get here for recording as the
         filesystem might have a different timestamp granularity */
    }


  return FUNC3(FUNC2(wqb, local_abspath,
                                                 TRUE /* ignore_enoent */,
                                                 scratch_pool));
}