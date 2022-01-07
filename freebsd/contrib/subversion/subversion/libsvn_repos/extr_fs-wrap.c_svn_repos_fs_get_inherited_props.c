
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int (* svn_repos_authz_func_t ) (scalar_t__*,int *,char const*,void*,int *) ;
struct TYPE_4__ {int * prop_hash; int path_or_url; } ;
typedef TYPE_1__ svn_prop_inherited_item_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int * apr_array_make (int *,int,int) ;
 scalar_t__ apr_hash_count (int *) ;
 int * apr_hash_make (int *) ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 int svn_fs_node_prop (int **,int *,char const*,char const*,int *) ;
 int svn_fs_node_proplist (int **,int *,char const*,int *) ;
 char* svn_fspath__dirname (char const*,int *) ;
 int svn_hash_sets (int *,char const*,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_sort__array_insert (int *,TYPE_1__**,int ) ;

svn_error_t *
svn_repos_fs_get_inherited_props(apr_array_header_t **inherited_props_p,
                                 svn_fs_root_t *root,
                                 const char *path,
                                 const char *propname,
                                 svn_repos_authz_func_t authz_read_func,
                                 void *authz_read_baton,
                                 apr_pool_t *result_pool,
                                 apr_pool_t *scratch_pool)
{
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);
  apr_array_header_t *inherited_props;
  const char *parent_path = path;

  inherited_props = apr_array_make(result_pool, 1,
                                   sizeof(svn_prop_inherited_item_t *));
  while (!(parent_path[0] == '/' && parent_path[1] == '\0'))
    {
      svn_boolean_t allowed = TRUE;
      apr_hash_t *parent_properties = ((void*)0);

      svn_pool_clear(iterpool);
      parent_path = svn_fspath__dirname(parent_path, scratch_pool);

      if (authz_read_func)
        SVN_ERR(authz_read_func(&allowed, root, parent_path,
                                authz_read_baton, iterpool));
      if (allowed)
        {
          if (propname)
            {
              svn_string_t *propval;

              SVN_ERR(svn_fs_node_prop(&propval, root, parent_path, propname,
                                       result_pool));
              if (propval)
                {
                  parent_properties = apr_hash_make(result_pool);
                  svn_hash_sets(parent_properties, propname, propval);
                }
            }
          else
            {
              SVN_ERR(svn_fs_node_proplist(&parent_properties, root,
                                           parent_path, result_pool));
            }

          if (parent_properties && apr_hash_count(parent_properties))
            {
              svn_prop_inherited_item_t *i_props =
                apr_pcalloc(result_pool, sizeof(*i_props));
              i_props->path_or_url =
                apr_pstrdup(result_pool, parent_path + 1);
              i_props->prop_hash = parent_properties;

              svn_sort__array_insert(inherited_props, &i_props, 0);
            }
        }
    }

  svn_pool_destroy(iterpool);

  *inherited_props_p = inherited_props;
  return SVN_NO_ERROR;
}
