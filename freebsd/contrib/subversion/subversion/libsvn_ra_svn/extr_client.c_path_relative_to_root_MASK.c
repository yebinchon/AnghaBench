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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_ERR_RA_ILLEGAL_URL ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*) ; 
 char* FUNC4 (char const*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *FUNC5(svn_ra_session_t *session,
                                          const char **rel_path,
                                          const char *url,
                                          apr_pool_t *pool)
{
  const char *root_url;

  FUNC0(FUNC2(session, &root_url, pool));
  *rel_path = FUNC4(root_url, url, pool);
  if (! *rel_path)
    return FUNC3(SVN_ERR_RA_ILLEGAL_URL, NULL,
                             FUNC1("'%s' isn't a child of repository root "
                               "URL '%s'"),
                             url, root_url);
  return SVN_NO_ERROR;
}