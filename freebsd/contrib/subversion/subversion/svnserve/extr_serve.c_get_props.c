
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_string_t ;
typedef int svn_revnum_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
struct TYPE_4__ {int server; } ;
typedef TYPE_1__ authz_baton_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_ENTRY_COMMITTED_DATE ;
 int SVN_PROP_ENTRY_COMMITTED_REV ;
 int SVN_PROP_ENTRY_LAST_AUTHOR ;
 int SVN_PROP_ENTRY_UUID ;
 int authz_check_access_cb_func (int ) ;
 int svn_fs_get_uuid (int ,char const**,int *) ;
 int svn_fs_node_proplist (int **,int *,char const*,int *) ;
 int svn_fs_root_fs (int *) ;
 int svn_hash_sets (int *,int ,int *) ;
 int svn_repos_fs_get_inherited_props (int **,int *,char const*,int *,int ,TYPE_1__*,int *,int *) ;
 int svn_repos_get_committed_info (int *,char const**,char const**,int *,char const*,int *) ;
 int * svn_string_create (char const*,int *) ;
 int * svn_string_createf (int *,char*,int ) ;

__attribute__((used)) static svn_error_t *
get_props(apr_hash_t **props,
          apr_array_header_t **iprops,
          authz_baton_t *b,
          svn_fs_root_t *root,
          const char *path,
          apr_pool_t *pool)
{

  if (props)
    {
      svn_string_t *str;
      svn_revnum_t crev;
      const char *cdate, *cauthor, *uuid;

      SVN_ERR(svn_fs_node_proplist(props, root, path, pool));


      SVN_ERR(svn_repos_get_committed_info(&crev, &cdate, &cauthor, root,
                                           path, pool));
      str = svn_string_createf(pool, "%ld", crev);
      svn_hash_sets(*props, SVN_PROP_ENTRY_COMMITTED_REV, str);
      str = (cdate) ? svn_string_create(cdate, pool) : ((void*)0);
      svn_hash_sets(*props, SVN_PROP_ENTRY_COMMITTED_DATE, str);
      str = (cauthor) ? svn_string_create(cauthor, pool) : ((void*)0);
      svn_hash_sets(*props, SVN_PROP_ENTRY_LAST_AUTHOR, str);


      SVN_ERR(svn_fs_get_uuid(svn_fs_root_fs(root), &uuid, pool));
      str = (uuid) ? svn_string_create(uuid, pool) : ((void*)0);
      svn_hash_sets(*props, SVN_PROP_ENTRY_UUID, str);
    }


  if (iprops)
    {
      SVN_ERR(svn_repos_fs_get_inherited_props(
                iprops, root, path, ((void*)0),
                authz_check_access_cb_func(b->server),
                b, pool, pool));
    }

  return SVN_NO_ERROR;
}
