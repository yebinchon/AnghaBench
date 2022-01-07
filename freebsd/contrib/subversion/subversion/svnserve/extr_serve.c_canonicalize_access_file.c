
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int base; } ;
typedef TYPE_1__ repository_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* svn_dirent_internal_style (char const*,int *) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 scalar_t__ svn_path_is_repos_relative_url (char const*) ;
 scalar_t__ svn_path_is_url (char const*) ;
 int svn_path_resolve_repos_relative_url (char const**,char const*,char const*,int *) ;
 char* svn_uri_canonicalize (char const*,int *) ;
 int svn_uri_get_file_url_from_dirent (char const**,char const*,int *) ;

__attribute__((used)) static svn_error_t *
canonicalize_access_file(const char **access_file, repository_t *repository,
                         const char *repos_root, apr_pool_t *pool)
{
  if (svn_path_is_url(*access_file))
    {
      *access_file = svn_uri_canonicalize(*access_file, pool);
    }
  else if (svn_path_is_repos_relative_url(*access_file))
    {
      const char *repos_root_url;

      SVN_ERR(svn_uri_get_file_url_from_dirent(&repos_root_url, repos_root,
                                               pool));
      SVN_ERR(svn_path_resolve_repos_relative_url(access_file, *access_file,
                                                  repos_root_url, pool));
      *access_file = svn_uri_canonicalize(*access_file, pool);
    }
  else
    {
      *access_file = svn_dirent_internal_style(*access_file, pool);
      *access_file = svn_dirent_join(repository->base, *access_file, pool);
    }

  return SVN_NO_ERROR;
}
