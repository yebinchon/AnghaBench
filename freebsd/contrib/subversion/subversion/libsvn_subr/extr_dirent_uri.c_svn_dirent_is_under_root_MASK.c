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
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 scalar_t__ APR_EABOVEROOT ; 
 int APR_FILEPATH_NOTABOVEROOT ; 
 int APR_FILEPATH_SECUREROOTTEST ; 
 scalar_t__ APR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (char**,char const*,char const*,int,int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC3(svn_boolean_t *under_root,
                         const char **result_path,
                         const char *base_path,
                         const char *path,
                         apr_pool_t *result_pool)
{
  apr_status_t status;
  char *full_path;

  *under_root = FALSE;
  if (result_path)
    *result_path = NULL;

  status = FUNC0(&full_path,
                              base_path,
                              path,
                              APR_FILEPATH_NOTABOVEROOT
                              | APR_FILEPATH_SECUREROOTTEST,
                              result_pool);

  if (status == APR_SUCCESS)
    {
      if (result_path)
        *result_path = FUNC1(full_path, result_pool);
      *under_root = TRUE;
      return SVN_NO_ERROR;
    }
  else if (status == APR_EABOVEROOT)
    {
      *under_root = FALSE;
      return SVN_NO_ERROR;
    }

  return FUNC2(status, NULL);
}