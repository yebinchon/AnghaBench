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
typedef  int /*<<< orphan*/  svn_ra_session_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 char const* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC3(const char *path_or_url,
         svn_ra_session_t *ra_session,
         apr_pool_t *pool)
{
  if (path_or_url == NULL)
    {
      svn_error_t *err = FUNC2(ra_session, &path_or_url,
                                                pool);
      if (err)
        {
          /* The SVN_ERR_UNSUPPORTED_FEATURE error in the caller is more
             important, so dummy up the session's URL and chuck this error. */
          FUNC1(err);
          return FUNC0("<repository>");
        }
    }
  return path_or_url;
}