
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* repository; } ;
typedef TYPE_3__ server_baton_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {TYPE_1__* fs_path; int repos_url; } ;
struct TYPE_4__ {int data; } ;


 char* svn_fspath__canonicalize (char const*,int *) ;
 char* svn_fspath__join (int ,char const*,int *) ;
 scalar_t__ svn_path_is_url (char const*) ;
 char* svn_uri_skip_ancestor (int ,char const*,int *) ;

__attribute__((used)) static const char *
get_normalized_repo_rel_path(void *baton,
                             const char *path,
                             apr_pool_t *pool)
{
  server_baton_t *sb = baton;

  if (svn_path_is_url(path))
    {

      path = svn_uri_skip_ancestor(sb->repository->repos_url, path, pool);
      path = svn_fspath__canonicalize(path, pool);
    }
  else
    {

      if ((path)[0] != '/')

        path = svn_fspath__join(sb->repository->fs_path->data, path, pool);
    }

  return path;
}
