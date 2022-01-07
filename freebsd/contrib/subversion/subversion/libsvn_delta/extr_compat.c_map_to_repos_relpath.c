
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ev2_edit_baton {int base_relpath; int repos_root; } ;
typedef int apr_pool_t ;


 scalar_t__ svn_path_is_url (char const*) ;
 char const* svn_relpath_join (int ,char const*,int *) ;
 char const* svn_uri_skip_ancestor (int ,char const*,int *) ;

__attribute__((used)) static const char *
map_to_repos_relpath(struct ev2_edit_baton *eb,
                     const char *path_or_url,
                     apr_pool_t *result_pool)
{
  if (svn_path_is_url(path_or_url))
    {
      return svn_uri_skip_ancestor(eb->repos_root, path_or_url, result_pool);
    }
  else
    {
      return svn_relpath_join(eb->base_relpath,
                              path_or_url[0] == '/'
                                    ? path_or_url + 1 : path_or_url,
                              result_pool);
    }
}
