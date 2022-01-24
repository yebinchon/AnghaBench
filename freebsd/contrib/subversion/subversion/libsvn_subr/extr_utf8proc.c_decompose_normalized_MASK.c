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
typedef  int /*<<< orphan*/  svn_membuf_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ apr_ssize_t ;
typedef  scalar_t__ apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_UTF8PROC_ERROR ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static svn_error_t *
FUNC4(apr_size_t *result_length,
                     const char *string, apr_size_t length,
                     svn_membuf_t *buffer)
{
  apr_ssize_t result = FUNC2(0, string, length, buffer);
  if (result < 0)
    return FUNC1(SVN_ERR_UTF8PROC_ERROR, NULL,
                            FUNC0(FUNC3(result)));
  *result_length = result;
  return SVN_NO_ERROR;
}