#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ apr_err; } ;
typedef  TYPE_1__ svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SVN_ERR_CL_NO_EXTERNAL_EDITOR ; 
 scalar_t__ SVN_ERR_EXTERNAL_PROGRAM ; 
 TYPE_1__* SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 TYPE_1__* FUNC2 (char const*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,...) ; 
 char* FUNC4 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static svn_error_t *
FUNC7(svn_boolean_t *performed_edit,
            const char *merged_abspath,
            const char *editor_cmd,
            apr_hash_t *config,
            apr_pool_t *pool)
{
  svn_error_t *err;

  if (merged_abspath)
    {
      err = FUNC2(merged_abspath, editor_cmd,
                                              config, pool);
      if (err && (err->apr_err == SVN_ERR_CL_NO_EXTERNAL_EDITOR ||
                  err->apr_err == SVN_ERR_EXTERNAL_PROGRAM))
        {
          char buf[1024];
          const char *message;

          message = FUNC4(err, buf, sizeof(buf));
          FUNC0(FUNC3(stderr, pool, "%s\n", message));
          FUNC5(err);
        }
      else if (err)
        return FUNC6(err);
      else
        *performed_edit = TRUE;
    }
  else
    FUNC0(FUNC3(stderr, pool,
                                FUNC1("Invalid option; there's no "
                                  "merged version to edit.\n\n")));

  return SVN_NO_ERROR;
}