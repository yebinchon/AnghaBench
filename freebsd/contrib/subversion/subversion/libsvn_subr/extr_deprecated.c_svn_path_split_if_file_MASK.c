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
struct TYPE_9__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_10__ {scalar_t__ filetype; } ;
typedef  TYPE_2__ apr_finfo_t ;

/* Variables and functions */
 scalar_t__ APR_DIR ; 
 int /*<<< orphan*/  APR_FINFO_TYPE ; 
 scalar_t__ APR_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* SVN_EMPTY_PATH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_BAD_FILENAME ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (TYPE_2__*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*,char const**,char const**,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC9(const char *path,
                       const char **pdirectory,
                       const char **pfile,
                       apr_pool_t *pool)
{
  apr_finfo_t finfo;
  svn_error_t *err;

  FUNC1(FUNC6(path, pool));

  err = FUNC5(&finfo, path, APR_FINFO_TYPE, pool);
  if (err && ! FUNC0(err->apr_err))
    return err;

  if (err || finfo.filetype == APR_REG)
    {
      FUNC3(err);
      FUNC8(path, pdirectory, pfile, pool);
    }
  else if (finfo.filetype == APR_DIR)
    {
      *pdirectory = path;
      *pfile = SVN_EMPTY_PATH;
    }
  else
    {
      return FUNC4(SVN_ERR_BAD_FILENAME, NULL,
                               FUNC2("'%s' is neither a file nor a directory name"),
                               FUNC7(path, pool));
    }

  return SVN_NO_ERROR;
}