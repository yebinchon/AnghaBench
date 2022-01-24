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
 int /*<<< orphan*/  SVN_ERR_BAD_URL ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 char SVN_PATH_LOCAL_SEPARATOR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC2 (char const*,char) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 char* FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC7 (char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC8(const char **url_out, const char *url_in,
                              apr_pool_t *pool)
{
  const char *target;

  /* Convert to URI. */
  target = FUNC6(url_in, pool);
  /* Auto-escape some ASCII characters. */
  target = FUNC5(target, pool);

#if '/' != SVN_PATH_LOCAL_SEPARATOR
  /* Allow using file:///C:\users\me/repos on Windows, like we did in 1.6 */
  if (FUNC2(target, SVN_PATH_LOCAL_SEPARATOR))
    {
      char *p = FUNC1(pool, target);
      target = p;

      /* Convert all local-style separators to the canonical ones. */
      for (; *p != '\0'; ++p)
        if (*p == SVN_PATH_LOCAL_SEPARATOR)
          *p = '/';
    }
#endif

  /* Verify that no backpaths are present in the URL. */
  if (FUNC4(target))
    return FUNC3(SVN_ERR_BAD_URL, 0,
                             FUNC0("URL '%s' contains a '..' element"),
                             target);

  /* Strip any trailing '/' and collapse other redundant elements. */
  target = FUNC7(target, pool);

  *url_out = target;
  return SVN_NO_ERROR;
}