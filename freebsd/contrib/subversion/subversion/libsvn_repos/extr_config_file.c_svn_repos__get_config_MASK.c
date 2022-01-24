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
typedef  int /*<<< orphan*/  svn_stream_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_checksum_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  config_access_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*) ; 

svn_error_t *
FUNC6(svn_stream_t **stream,
                      svn_checksum_t **checksum,
                      config_access_t *access,
                      const char *path,
                      svn_boolean_t must_exist,
                      apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  /* Directly access the config data. */
  if (FUNC5(path))
    err = FUNC2(stream, checksum, access, path, must_exist,
                           scratch_pool);
  else
    err = FUNC0(stream, checksum, access, path, must_exist,
                          scratch_pool);

  /* Fallback to indirect access using the generic config file parser.
   * This is mainly used for registry support under Win32. */
  if (err)
    {
      svn_error_t *err2 = FUNC1(stream, checksum, access, path,
                                             must_exist, scratch_pool);
      if (err2)
        {
          FUNC3(err2);
        }
      else
        {
          FUNC3(err);
          err = SVN_NO_ERROR;
        }
    }

  return FUNC4(err);
}