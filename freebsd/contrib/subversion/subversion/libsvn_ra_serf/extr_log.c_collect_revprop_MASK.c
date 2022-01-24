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
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_RA_DAV_MALFORMED_DATA ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC7(apr_hash_t *revprops,
                const char *propname,
                const svn_string_t *cdata,
                const char *encoding)
{
  apr_pool_t *result_pool = FUNC1(revprops);
  const svn_string_t *decoded;

  if (encoding)
    {
      /* Check for a known encoding type.  This is easy -- there's
         only one.  */
      if (FUNC2(encoding, "base64") != 0)
        {
          return FUNC4(SVN_ERR_RA_DAV_MALFORMED_DATA, NULL,
                                   FUNC0("Unsupported encoding '%s'"),
                                   encoding);
        }

      decoded = FUNC3(cdata, result_pool);
    }
  else
    {
      decoded = FUNC6(cdata, result_pool);
    }

  /* Caller has ensured PROPNAME has sufficient lifetime.  */
  FUNC5(revprops, propname, decoded);

  return SVN_NO_ERROR;
}