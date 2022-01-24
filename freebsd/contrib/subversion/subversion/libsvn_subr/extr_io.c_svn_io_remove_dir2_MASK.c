#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ kind; } ;
typedef  TYPE_1__ svn_io_dirent2_t ;
struct TYPE_18__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_2__ svn_error_t ;
typedef  TYPE_2__* (* svn_cancel_func_t ) (void*) ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* SVN_NO_ERROR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC12 (TYPE_2__*) ; 
 TYPE_2__* FUNC13 (char const*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC14 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC15 (char const*,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC18(const char *path, svn_boolean_t ignore_enoent,
                   svn_cancel_func_t cancel_func, void *cancel_baton,
                   apr_pool_t *pool)
{
  svn_error_t *err;
  apr_pool_t *subpool;
  apr_hash_t *dirents;
  apr_hash_index_t *hi;

  /* Check for pending cancellation request.
     If we need to bail out, do so early. */

  if (cancel_func)
    FUNC1(cancel_func(cancel_baton));

  subpool = FUNC16(pool);

  err = FUNC14(&dirents, path, TRUE, subpool, subpool);
  if (err)
    {
      /* if the directory doesn't exist, our mission is accomplished */
      if (ignore_enoent && (FUNC0(err->apr_err)
                            || FUNC2(err->apr_err)))
        {
          FUNC10(err);
          return SVN_NO_ERROR;
        }
      return FUNC12(err);
    }

  for (hi = FUNC4(subpool, dirents); hi; hi = FUNC5(hi))
    {
      const char *name = FUNC6(hi);
      const svn_io_dirent2_t *dirent = FUNC7(hi);
      const char *fullpath;

      fullpath = FUNC8(path, name, subpool);
      if (dirent->kind == svn_node_dir)
        {
          /* Don't check for cancellation, the callee will immediately do so */
          FUNC1(FUNC18(fullpath, FALSE, cancel_func,
                                     cancel_baton, subpool));
        }
      else
        {
          if (cancel_func)
            FUNC1(cancel_func(cancel_baton));

          err = FUNC15(fullpath, FALSE, subpool);
          if (err)
            return FUNC11
              (err->apr_err, err, FUNC3("Can't remove '%s'"),
               FUNC9(fullpath, subpool));
        }
    }

  FUNC17(subpool);

  return FUNC13(path, pool);
}