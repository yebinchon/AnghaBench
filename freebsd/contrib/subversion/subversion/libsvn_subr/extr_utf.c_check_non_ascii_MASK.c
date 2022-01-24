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
typedef  scalar_t__ apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_EINVAL ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 scalar_t__ FUNC3 (char const) ; 
 int /*<<< orphan*/  FUNC4 (char const) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static svn_error_t *
FUNC6(const char *data, apr_size_t len, apr_pool_t *pool)
{
  const char *data_start = data;

  for (; len > 0; --len, data++)
    {
      if ((! FUNC2(*data))
          || ((! FUNC4(*data))
              && FUNC3(*data)))
        {
          /* Show the printable part of the data, followed by the
             decimal code of the questionable character.  Because if a
             user ever gets this error, she's going to have to spend
             time tracking down the non-ASCII data, so we want to help
             as much as possible.  And yes, we just call the unsafe
             data "non-ASCII", even though the actual constraint is
             somewhat more complex than that. */

          if (data - data_start)
            {
              const char *error_data
                = FUNC1(pool, data_start, (data - data_start));

              return FUNC5
                (APR_EINVAL, NULL,
                 FUNC0("Safe data '%s' was followed by non-ASCII byte %d: "
                   "unable to convert to/from UTF-8"),
                 error_data, *((const unsigned char *) data));
            }
          else
            {
              return FUNC5
                (APR_EINVAL, NULL,
                 FUNC0("Non-ASCII character (code %d) detected, "
                   "and unable to convert to/from UTF-8"),
                 *((const unsigned char *) data));
            }
        }
    }

  return SVN_NO_ERROR;
}