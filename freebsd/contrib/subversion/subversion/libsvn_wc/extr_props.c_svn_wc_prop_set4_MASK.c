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
typedef  int /*<<< orphan*/  svn_wc_notify_func2_t ;
struct TYPE_7__ {int /*<<< orphan*/ * db; } ;
typedef  TYPE_1__ svn_wc_context_t ;
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  scalar_t__ svn_wc__db_status_t ;
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_depth_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
struct propset_walk_baton {char const* propname; void* notify_baton; int /*<<< orphan*/  notify_func; int /*<<< orphan*/  force; int /*<<< orphan*/ * db; int /*<<< orphan*/  const* propval; } ;
typedef  enum svn_prop_kind { ____Placeholder_svn_prop_kind } svn_prop_kind ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
struct TYPE_8__ {scalar_t__ nelts; } ;
typedef  TYPE_2__ apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SVN_ERR_BAD_PROP_KIND ; 
 int /*<<< orphan*/  SVN_ERR_WC_INVALID_SCHEDULE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,scalar_t__,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  propset_walk_cb ; 
 scalar_t__ svn_depth_empty ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ *) ; 
 char const* FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 int svn_prop_entry_kind ; 
 int svn_prop_wc_kind ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_wc__db_status_added ; 
 scalar_t__ svn_wc__db_status_incomplete ; 
 scalar_t__ svn_wc__db_status_normal ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,TYPE_2__ const*,int /*<<< orphan*/ ,struct propset_walk_baton*,scalar_t__,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC15(svn_wc_context_t *wc_ctx,
                 const char *local_abspath,
                 const char *name,
                 const svn_string_t *value,
                 svn_depth_t depth,
                 svn_boolean_t skip_checks,
                 const apr_array_header_t *changelist_filter,
                 svn_cancel_func_t cancel_func,
                 void *cancel_baton,
                 svn_wc_notify_func2_t notify_func,
                 void *notify_baton,
                 apr_pool_t *scratch_pool)
{
  enum svn_prop_kind prop_kind = FUNC9(name);
  svn_wc__db_status_t status;
  svn_node_kind_t kind;
  svn_wc__db_t *db = wc_ctx->db;

  /* we don't do entry properties here */
  if (prop_kind == svn_prop_entry_kind)
    return FUNC6(SVN_ERR_BAD_PROP_KIND, NULL,
                             FUNC2("Property '%s' is an entry property"), name);

  /* Check to see if we're setting the dav cache. */
  if (prop_kind == svn_prop_wc_kind)
    {
      FUNC1(depth == svn_depth_empty);
      return FUNC7(FUNC14(wc_ctx->db, local_abspath,
                                        name, value, scratch_pool));
    }

  FUNC0(FUNC10(&status, &kind, NULL, NULL, NULL, NULL, NULL,
                               NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                               NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                               NULL, NULL, NULL, NULL, NULL, NULL,
                               wc_ctx->db, local_abspath,
                               scratch_pool, scratch_pool));

  if (status != svn_wc__db_status_normal
      && status != svn_wc__db_status_added
      && status != svn_wc__db_status_incomplete)
    {
      return FUNC6(SVN_ERR_WC_INVALID_SCHEDULE, NULL,
                                  FUNC2("Can't set properties on '%s':"
                                  " invalid status for updating properties."),
                                  FUNC5(local_abspath,
                                                         scratch_pool));
    }

  /* We have to do this little DIR_ABSPATH dance for backwards compat.
     But from 1.7 onwards, all locks are of infinite depth, and from 1.6
     backward we never call this API with depth > empty, so we only need
     to do the write check once per call, here (and not for every node in
     the node walker).

     ### Note that we could check for a write lock on local_abspath first
     ### if we would want to. And then justy check for kind if that fails.
     ### ... but we need kind for the "svn:" property checks anyway */
  {
    const char *dir_abspath;

    if (kind == svn_node_dir)
      dir_abspath = local_abspath;
    else
      dir_abspath = FUNC4(local_abspath, scratch_pool);

    /* Verify that we're holding this directory's write lock.  */
    FUNC0(FUNC13(db, dir_abspath, scratch_pool));
  }

  if (depth == svn_depth_empty || kind != svn_node_dir)
    {
      apr_hash_t *changelist_hash = NULL;

      if (changelist_filter && changelist_filter->nelts)
        FUNC0(FUNC8(&changelist_hash, changelist_filter,
                                           scratch_pool));

      if (!FUNC11(wc_ctx->db, local_abspath,
                                             changelist_hash, scratch_pool))
        return SVN_NO_ERROR;

      FUNC0(FUNC3(wc_ctx->db, local_abspath,
                         kind == svn_node_dir
                            ? svn_node_dir
                            : svn_node_file,
                         name, value, skip_checks,
                         notify_func, notify_baton, scratch_pool));

    }
  else
    {
      struct propset_walk_baton wb;

      wb.propname = name;
      wb.propval = value;
      wb.db = wc_ctx->db;
      wb.force = skip_checks;
      wb.notify_func = notify_func;
      wb.notify_baton = notify_baton;

      FUNC0(FUNC12(wc_ctx->db, local_abspath,
                                             FALSE, changelist_filter,
                                             propset_walk_cb, &wb,
                                             depth,
                                             cancel_func, cancel_baton,
                                             scratch_pool));
    }

  return SVN_NO_ERROR;
}