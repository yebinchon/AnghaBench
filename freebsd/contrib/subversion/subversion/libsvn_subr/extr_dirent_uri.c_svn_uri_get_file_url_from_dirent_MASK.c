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
typedef  int apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  SVN_VA_NULL ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const**,char const*,int /*<<< orphan*/ *) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char const*,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC7(const char **url,
                                 const char *dirent,
                                 apr_pool_t *pool)
{
  FUNC2(FUNC5(dirent, pool));

  FUNC0(FUNC4(&dirent, dirent, pool));

  dirent = FUNC6(dirent, pool);

#ifndef SVN_USE_DOS_PATHS
  if (dirent[0] == '/' && dirent[1] == '\0')
    dirent = NULL; /* "file://" is the canonical form of "file:///" */

  *url = FUNC1(pool, "file://", dirent, SVN_VA_NULL);
#else
  if (dirent[0] == '/')
    {
      /* Handle UNC paths //server/share -> file://server/share */
      assert(dirent[1] == '/'); /* Expect UNC, not non-absolute */

      *url = apr_pstrcat(pool, "file:", dirent, SVN_VA_NULL);
    }
  else
    {
      char *uri = apr_pstrcat(pool, "file:///", dirent, SVN_VA_NULL);
      apr_size_t len = 8 /* strlen("file:///") */ + strlen(dirent);

      /* "C:/" is a canonical dirent on Windows,
         but "file:///C:/" is not a canonical uri */
      if (uri[len-1] == '/')
        uri[len-1] = '\0';

      *url = uri;
    }
#endif

  return SVN_NO_ERROR;
}