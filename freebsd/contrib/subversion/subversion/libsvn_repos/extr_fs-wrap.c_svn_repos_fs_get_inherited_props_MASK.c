#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  svn_string_t ;
typedef  int /*<<< orphan*/  (* svn_repos_authz_func_t ) (scalar_t__*,int /*<<< orphan*/ *,char const*,void*,int /*<<< orphan*/ *) ;
struct TYPE_4__ {int /*<<< orphan*/ * prop_hash; int /*<<< orphan*/  path_or_url; } ;
typedef  TYPE_1__ svn_prop_inherited_item_t ;
typedef  int /*<<< orphan*/  svn_fs_root_t ;
typedef  int /*<<< orphan*/  svn_error_t ;
typedef  scalar_t__ svn_boolean_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_array_header_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * SVN_NO_ERROR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC8 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_1__**,int /*<<< orphan*/ ) ; 

svn_error_t *
FUNC14(apr_array_header_t **inherited_props_p,
                                 svn_fs_root_t *root,
                                 const char *path,
                                 const char *propname,
                                 svn_repos_authz_func_t authz_read_func,
                                 void *authz_read_baton,
                                 apr_pool_t *result_pool,
                                 apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool = FUNC11(scratch_pool);
  apr_array_header_t *inherited_props;
  const char *parent_path = path;

  inherited_props = FUNC1(result_pool, 1,
                                   sizeof(svn_prop_inherited_item_t *));
  while (!(parent_path[0] == '/' && parent_path[1] == '\0'))
    {
      svn_boolean_t allowed = TRUE;
      apr_hash_t *parent_properties = NULL;

      FUNC10(iterpool);
      parent_path = FUNC8(parent_path, scratch_pool);

      if (authz_read_func)
        FUNC0(authz_read_func(&allowed, root, parent_path,
                                authz_read_baton, iterpool));
      if (allowed)
        {
          if (propname)
            {
              svn_string_t *propval;

              FUNC0(FUNC6(&propval, root, parent_path, propname,
                                       result_pool));
              if (propval)
                {
                  parent_properties = FUNC3(result_pool);
                  FUNC9(parent_properties, propname, propval);
                }
            }
          else
            {
              FUNC0(FUNC7(&parent_properties, root,
                                           parent_path, result_pool));
            }

          if (parent_properties && FUNC2(parent_properties))
            {
              svn_prop_inherited_item_t *i_props =
                FUNC4(result_pool, sizeof(*i_props));
              i_props->path_or_url =
                FUNC5(result_pool, parent_path + 1);
              i_props->prop_hash = parent_properties;
              /* Build the output array in depth-first order. */
              FUNC13(inherited_props, &i_props, 0);
            }
        }
    }

  FUNC12(iterpool);

  *inherited_props_p = inherited_props;
  return SVN_NO_ERROR;
}