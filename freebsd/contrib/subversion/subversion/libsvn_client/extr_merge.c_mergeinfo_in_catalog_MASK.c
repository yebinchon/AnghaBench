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
typedef  int /*<<< orphan*/ * svn_mergeinfo_t ;
typedef  scalar_t__ svn_mergeinfo_catalog_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC8 (char const*,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static svn_error_t *
FUNC10(svn_boolean_t *in_catalog,
                     const char **cat_key_path,
                     const char *repos_rel_path,
                     svn_mergeinfo_t mergeinfo,
                     svn_mergeinfo_catalog_t catalog,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  const char *walk_path = NULL;

  *in_catalog = FALSE;
  *cat_key_path = NULL;

  if (mergeinfo && catalog && FUNC1(catalog))
    {
      const char *path = repos_rel_path;

      /* Start with the assumption there is no explicit or inherited
         mergeinfo for REPOS_REL_PATH in CATALOG. */
      svn_mergeinfo_t mergeinfo_in_cat = NULL;

      while (1)
        {
          mergeinfo_in_cat = FUNC3(catalog, path);

          if (mergeinfo_in_cat) /* Found it! */
            {
              *cat_key_path = FUNC2(result_pool, path);
              break;
            }
          else /* Look for inherited mergeinfo. */
            {
              walk_path = FUNC9(FUNC7(path,
                                                                scratch_pool),
                                           walk_path ? walk_path : "",
                                           scratch_pool);
              path = FUNC8(path, scratch_pool);

              if (path[0] == '\0') /* No mergeinfo to inherit. */
                break;
            }
        }

      if (mergeinfo_in_cat)
        {
          if (walk_path)
            FUNC0(FUNC4(&mergeinfo_in_cat,
                                                           mergeinfo_in_cat,
                                                           walk_path,
                                                           scratch_pool,
                                                           scratch_pool));
          FUNC0(FUNC6(&mergeinfo_in_cat,
                                           mergeinfo_in_cat, mergeinfo,
                                           TRUE,
                                           scratch_pool, scratch_pool));
          FUNC0(FUNC5(in_catalog, mergeinfo_in_cat,
                                        mergeinfo, TRUE, scratch_pool));
        }
    }

  return SVN_NO_ERROR;
}