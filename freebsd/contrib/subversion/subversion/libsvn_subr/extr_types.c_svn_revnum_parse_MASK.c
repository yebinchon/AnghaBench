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
typedef  scalar_t__ svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ apr_uint32_t ;

/* Variables and functions */
 scalar_t__ APR_INT32_MAX ; 
 int /*<<< orphan*/  SVN_ERR_REVNUM_PARSE_FAILURE ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const**) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 

svn_error_t *
FUNC3(svn_revnum_t *rev,
                 const char *str,
                 const char **endptr)
{
  const char *end;

  svn_revnum_t result = (svn_revnum_t)FUNC1(str, &end);

  if (endptr)
    *endptr = str;

  if (str == end)
    return FUNC2
              (SVN_ERR_REVNUM_PARSE_FAILURE, NULL,
               *str == '-' ? FUNC0("Negative revision number found parsing '%s'")
                           : FUNC0("Invalid revision number found parsing '%s'"),
               str);

  /* a revision number with more than 9 digits is suspicious.
     Have a closer look at those. */
  if (str + 10 <= end)
    {
      /* we support 32 bit revision numbers only. check for overflows */
      if (str + 10 < end)
        return FUNC2
                  (SVN_ERR_REVNUM_PARSE_FAILURE, NULL,
                  FUNC0("Revision number longer than 10 digits '%s'"), str);

      /* we support 32 bit revision numbers only. check for overflows */
      if (*str > '2' || (apr_uint32_t)result > APR_INT32_MAX)
        return FUNC2
                  (SVN_ERR_REVNUM_PARSE_FAILURE, NULL,
                  FUNC0("Revision number too large '%s'"), str);
    }

  if (endptr)
    *endptr = end;

  *rev = result;

  return SVN_NO_ERROR;
}