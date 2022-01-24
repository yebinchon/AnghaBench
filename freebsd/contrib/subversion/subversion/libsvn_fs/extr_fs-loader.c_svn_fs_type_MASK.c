#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ svn_node_kind_t ;
struct TYPE_7__ {int /*<<< orphan*/  apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_file_t ;

/* Variables and functions */
 int APR_BUFFERED ; 
 int APR_READ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FS_TYPE_FILENAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* SVN_FS_TYPE_BDB ; 
 TYPE_1__* SVN_NO_ERROR ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (char const*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ **,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ svn_node_dir ; 

svn_error_t *
FUNC9(const char **fs_type, const char *path, apr_pool_t *pool)
{
  const char *filename;
  char buf[128];
  svn_error_t *err;
  apr_file_t *file;
  apr_size_t len;

  /* Read the fsap-name file to get the FSAP name, or assume the (old)
     default.  For old repositories I suppose we could check some
     other file, DB_CONFIG or strings say, but for now just check the
     directory exists. */
  filename = FUNC3(path, FS_TYPE_FILENAME, pool);
  err = FUNC7(&file, filename, APR_READ|APR_BUFFERED, 0, pool);
  if (err && FUNC0(err->apr_err))
    {
      svn_node_kind_t kind;
      svn_error_t *err2 = FUNC5(path, &kind, pool);
      if (err2)
        {
          FUNC4(err2);
          return err;
        }
      if (kind == svn_node_dir)
        {
          FUNC4(err);
          *fs_type = SVN_FS_TYPE_BDB;
          return SVN_NO_ERROR;
        }
      return err;
    }
  else if (err)
    return err;

  len = sizeof(buf);
  FUNC1(FUNC8(file, buf, &len, pool));
  FUNC1(FUNC6(file, pool));
  *fs_type = FUNC2(pool, buf);

  return SVN_NO_ERROR;
}