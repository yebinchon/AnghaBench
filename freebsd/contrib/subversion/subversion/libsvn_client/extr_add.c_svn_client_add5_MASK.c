#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_node_kind_t ;
struct TYPE_13__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_depth_t ;
struct TYPE_14__ {int /*<<< orphan*/  wc_ctx; } ;
typedef  TYPE_2__ svn_client_ctx_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_ENTRY_EXISTS ; 
 int /*<<< orphan*/  SVN_ERR_ILLEGAL_TARGET ; 
 scalar_t__ SVN_ERR_WC_NOT_WORKING_COPY ; 
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,char const*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const**,TYPE_2__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 
 char* FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const**,char const*,int /*<<< orphan*/ *) ; 
 char const* FUNC8 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (char const*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (char const*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC16 (scalar_t__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC17(const char *path,
                svn_depth_t depth,
                svn_boolean_t force,
                svn_boolean_t no_ignore,
                svn_boolean_t no_autoprops,
                svn_boolean_t add_parents,
                svn_client_ctx_t *ctx,
                apr_pool_t *scratch_pool)
{
  const char *parent_abspath;
  const char *local_abspath;
  const char *existing_parent_abspath;
  svn_boolean_t is_wc_root;
  svn_error_t *err;

  if (FUNC13(path))
    return FUNC10(SVN_ERR_ILLEGAL_TARGET, NULL,
                             FUNC2("'%s' is not a local path"), path);

  FUNC0(FUNC7(&local_abspath, path, scratch_pool));

  /* See if we're being asked to add a wc-root.  That's typically not
     okay, unless we're in "force" mode.  svn_wc__is_wcroot()
     will return TRUE even if LOCAL_ABSPATH is a *symlink* to a working
     copy root, which is a scenario we want to treat differently.  */
  err = FUNC16(&is_wc_root, ctx->wc_ctx, local_abspath,
                          scratch_pool);
  if (err)
    {
      if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND
          && err->apr_err != SVN_ERR_WC_NOT_WORKING_COPY)
        {
          return FUNC11(err);
        }

      FUNC9(err);
      err = NULL; /* SVN_NO_ERROR */
      is_wc_root = FALSE;
    }
  if (is_wc_root)
    {
#ifdef HAVE_SYMLINK
      svn_node_kind_t disk_kind;
      svn_boolean_t is_special;

      SVN_ERR(svn_io_check_special_path(local_abspath, &disk_kind, &is_special,
                                        scratch_pool));

      /* A symlink can be an unversioned target and a wcroot. Lets try to add
         the symlink, which can't be a wcroot. */
      if (is_special)
        is_wc_root = FALSE;
      else
#endif
        {
          if (! force)
            return FUNC10(
                                 SVN_ERR_ENTRY_EXISTS, NULL,
                                 FUNC2("'%s' is already under version control"),
                                 FUNC8(local_abspath,
                                                        scratch_pool));
        }
    }

  if (is_wc_root)
    parent_abspath = local_abspath; /* We will only add children */
  else
    parent_abspath = FUNC6(local_abspath, scratch_pool);

  existing_parent_abspath = NULL;
  if (add_parents && !is_wc_root)
    {
      apr_pool_t *subpool;
      const char *existing_parent_abspath2;

      subpool = FUNC14(scratch_pool);
      FUNC0(FUNC4(&existing_parent_abspath2, ctx,
                                   parent_abspath, scratch_pool, subpool));
      if (FUNC5(existing_parent_abspath2, parent_abspath) != 0)
        existing_parent_abspath = existing_parent_abspath2;
      FUNC15(subpool);
    }

  FUNC1(
    FUNC3(local_abspath, depth, force, no_ignore, no_autoprops,
        existing_parent_abspath, ctx, scratch_pool),
    ctx->wc_ctx, (existing_parent_abspath ? existing_parent_abspath
                                          : parent_abspath),
    FALSE /* lock_anchor */, scratch_pool);
  return SVN_NO_ERROR;
}