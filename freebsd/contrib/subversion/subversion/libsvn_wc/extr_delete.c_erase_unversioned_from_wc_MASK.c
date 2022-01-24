#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ svn_node_kind_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_cancel_func_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SVN_ERR_BAD_FILENAME ; 
 int /*<<< orphan*/  SVN_ERR_UNSUPPORTED_FEATURE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 scalar_t__ svn_node_file ; 
 scalar_t__ svn_node_none ; 

__attribute__((used)) static svn_error_t *
FUNC8(const char *path,
                          svn_boolean_t ignore_enoent,
                          svn_cancel_func_t cancel_func,
                          void *cancel_baton,
                          apr_pool_t *scratch_pool)
{
  svn_error_t *err;

  /* Optimize the common case: try to delete the file */
  err = FUNC7(path, ignore_enoent, scratch_pool);
  if (err)
    {
      /* Then maybe it was a directory? */
      FUNC3(err);

      err = FUNC6(path, ignore_enoent, cancel_func, cancel_baton,
                               scratch_pool);

      if (err)
        {
          /* We're unlikely to end up here. But we need this fallback
             to make sure we report the right error *and* try the
             correct deletion at least once. */
          svn_node_kind_t kind;

          FUNC3(err);
          FUNC0(FUNC5(path, &kind, scratch_pool));
          if (kind == svn_node_file)
            FUNC0(FUNC7(path, ignore_enoent, scratch_pool));
          else if (kind == svn_node_dir)
            FUNC0(FUNC6(path, ignore_enoent,
                                       cancel_func, cancel_baton,
                                       scratch_pool));
          else if (kind == svn_node_none)
            return FUNC4(SVN_ERR_BAD_FILENAME, NULL,
                                     FUNC1("'%s' does not exist"),
                                     FUNC2(path,
                                                            scratch_pool));
          else
            return FUNC4(SVN_ERR_UNSUPPORTED_FEATURE, NULL,
                                     FUNC1("Unsupported node kind for path '%s'"),
                                     FUNC2(path,
                                                            scratch_pool));

        }
    }

  return SVN_NO_ERROR;
}