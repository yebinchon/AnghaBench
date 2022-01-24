#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ svn_stringbuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_RA_DAV_MALFORMED_DATA ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/ * FUNC3 (int*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static svn_error_t *
FUNC7(int *status_code_out,
                  const char **reason,
                  const char *status_line,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  const char *token;
  char *tok_status;
  svn_stringbuf_t *temp_buf = FUNC5(status_line, scratch_pool);

  FUNC6(temp_buf);
  token = FUNC2(temp_buf->data, " \t\r\n", &tok_status);
  if (token)
    token = FUNC2(NULL, " \t\r\n", &tok_status);
  if (!token)
    return FUNC4(SVN_ERR_RA_DAV_MALFORMED_DATA, NULL,
                             FUNC0("Malformed DAV:status '%s'"),
                             status_line);
  err = FUNC3(status_code_out, token);
  if (err)
    return FUNC4(SVN_ERR_RA_DAV_MALFORMED_DATA, err,
                             FUNC0("Malformed DAV:status '%s'"),
                             status_line);

  token = FUNC2(NULL, " \t\r\n", &tok_status);

  *reason = FUNC1(result_pool, token);

  return SVN_NO_ERROR;
}