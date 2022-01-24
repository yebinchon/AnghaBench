#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  (* svn_wc_upgrade_get_repos_info_t ) (int /*<<< orphan*/ **,int /*<<< orphan*/ **,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;
struct TYPE_3__ {int /*<<< orphan*/ * url; int /*<<< orphan*/ * uuid; int /*<<< orphan*/ * repos; } ;
typedef  TYPE_1__ svn_wc_entry_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  SVN_ERR_WC_UNSUPPORTED_FORMAT ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(svn_wc_entry_t *entry,
                  const char *local_abspath,
                  svn_wc_upgrade_get_repos_info_t repos_info_func,
                  void *repos_info_baton,
                  apr_hash_t *repos_cache,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  /* Easy exit.  */
  if (entry->repos != NULL && entry->uuid != NULL)
    return SVN_NO_ERROR;

  if ((entry->repos == NULL || entry->uuid == NULL)
      && entry->url)
    {
      apr_hash_index_t *hi;

      for (hi = FUNC1(scratch_pool, repos_cache);
           hi; hi = FUNC2(hi))
        {
          if (FUNC9(FUNC3(hi), entry->url))
            {
              if (!entry->repos)
                entry->repos = FUNC3(hi);

              if (!entry->uuid)
                entry->uuid = FUNC4(hi);

              return SVN_NO_ERROR;
            }
        }
    }

  if (entry->repos == NULL && repos_info_func == NULL)
    return FUNC7(
        SVN_ERR_WC_UNSUPPORTED_FORMAT, NULL,
        FUNC0("Working copy '%s' can't be upgraded because the repository root is "
          "not available and can't be retrieved"),
        FUNC6(local_abspath, scratch_pool));

  if (entry->uuid == NULL && repos_info_func == NULL)
    return FUNC7(
        SVN_ERR_WC_UNSUPPORTED_FORMAT, NULL,
        FUNC0("Working copy '%s' can't be upgraded because the repository uuid is "
          "not available and can't be retrieved"),
        FUNC6(local_abspath, scratch_pool));

   if (entry->url == NULL)
     return FUNC7(
        SVN_ERR_WC_UNSUPPORTED_FORMAT, NULL,
        FUNC0("Working copy '%s' can't be upgraded because it doesn't have a url"),
        FUNC6(local_abspath, scratch_pool));

   return FUNC8((*repos_info_func)(&entry->repos, &entry->uuid,
                                             repos_info_baton,
                                             entry->url,
                                             result_pool, scratch_pool));
}