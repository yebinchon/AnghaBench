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
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 unsigned int SVN_AUTH_SSL_CNMISMATCH ; 
 unsigned int SVN_AUTH_SSL_EXPIRED ; 
 unsigned int SVN_AUTH_SSL_NOTYETVALID ; 
 unsigned int SVN_AUTH_SSL_OTHER ; 
 unsigned int SVN_AUTH_SSL_UNKNOWNCA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*,char const*) ; 

__attribute__((used)) static svn_error_t *
FUNC4(const char *failure_string,
                   apr_pool_t *scratch_pool)
{
  unsigned int failures;

  FUNC0(FUNC3(&failures, failure_string));

  if (0 == (failures & (SVN_AUTH_SSL_NOTYETVALID | SVN_AUTH_SSL_EXPIRED |
                        SVN_AUTH_SSL_CNMISMATCH | SVN_AUTH_SSL_UNKNOWNCA |
                        SVN_AUTH_SSL_OTHER)))
    return SVN_NO_ERROR;

  FUNC0(FUNC2(
            scratch_pool, FUNC1("Automatic certificate validity check failed "
                            "because:\n")));

  if (failures & SVN_AUTH_SSL_NOTYETVALID)
    FUNC0(FUNC2(
              scratch_pool, FUNC1("  The certificate is not yet valid.\n")));

  if (failures & SVN_AUTH_SSL_EXPIRED)
    FUNC0(FUNC2(
              scratch_pool, FUNC1("  The certificate has expired.\n")));

  if (failures & SVN_AUTH_SSL_CNMISMATCH)
    FUNC0(FUNC2(
              scratch_pool, FUNC1("  The certificate's Common Name (hostname) "
                              "does not match the remote hostname.\n")));

  if (failures & SVN_AUTH_SSL_UNKNOWNCA)
    FUNC0(FUNC2(
              scratch_pool, FUNC1("  The certificate issuer is unknown.\n")));

  if (failures & SVN_AUTH_SSL_OTHER)
    FUNC0(FUNC2(
              scratch_pool, FUNC1("  Unknown verification failure.\n")));

  return SVN_NO_ERROR;
}