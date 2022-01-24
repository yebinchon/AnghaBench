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
typedef  int /*<<< orphan*/  svn_wc__db_t ;
typedef  int /*<<< orphan*/  svn_revnum_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  scalar_t__ apr_time_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SVN_INVALID_REVNUM ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,char const*,char const*,scalar_t__,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const**,char const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

svn_error_t *
FUNC7(apr_hash_t **keywords,
                        svn_wc__db_t *db,
                        const char *local_abspath,
                        const char *wri_abspath,
                        const char *keyword_list,
                        svn_boolean_t for_normalization,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  svn_revnum_t changed_rev;
  apr_time_t changed_date;
  const char *changed_author;
  const char *url;
  const char *repos_root_url;

  if (! for_normalization)
    {
      const char *repos_relpath;

      FUNC0(FUNC5(NULL, NULL, NULL, &repos_relpath,
                                   &repos_root_url, NULL, &changed_rev,
                                   &changed_date, &changed_author, NULL,
                                   NULL, NULL, NULL, NULL, NULL, NULL,
                                   NULL, NULL, NULL, NULL, NULL, NULL, NULL,
                                   NULL, NULL, NULL, NULL,
                                   db, local_abspath,
                                   scratch_pool, scratch_pool));

      /* Handle special statuses (e.g. added) */
      if (!repos_relpath)
         FUNC0(FUNC6(NULL, &repos_relpath,
                                            &repos_root_url, NULL,
                                            db, local_abspath,
                                            scratch_pool, scratch_pool));

      url = FUNC3(repos_root_url, repos_relpath,
                                        scratch_pool);
    }
  else
    {
      url = "";
      changed_rev = SVN_INVALID_REVNUM;
      changed_date = 0;
      changed_author = "";
      repos_root_url = "";
    }

  FUNC0(FUNC4(keywords, keyword_list,
                                    FUNC2(scratch_pool, "%ld",
                                                 changed_rev),
                                    url, repos_root_url,
                                    changed_date, changed_author,
                                    result_pool));

  if (FUNC1(*keywords) == 0)
    *keywords = NULL;

  return SVN_NO_ERROR;
}