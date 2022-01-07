
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int (* svn_repos_authz_func_t ) (void**,int *,char const*,void*,int *) ;
typedef int svn_fs_root_t ;
struct TYPE_3__ {char* copyfrom_path; int copyfrom_rev; void* copyfrom_known; } ;
typedef TYPE_1__ svn_fs_path_change3_t ;
typedef int svn_error_t ;
typedef void* svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int svn_fs_copied_from (int *,char**,int *,char const*,int *) ;
 int svn_fs_revision_root (int **,int ,int ,int *) ;
 int svn_fs_root_fs (int *) ;

__attribute__((used)) static svn_error_t *
fill_copyfrom(svn_fs_root_t **copyfrom_root,
              const char **copyfrom_path,
              svn_revnum_t *copyfrom_rev,
              svn_boolean_t *src_readable,
              svn_fs_root_t *root,
              svn_fs_path_change3_t *change,
              svn_repos_authz_func_t authz_read_func,
              void *authz_read_baton,
              const char *path,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  if (! change->copyfrom_known)
    {
      SVN_ERR(svn_fs_copied_from(&(change->copyfrom_rev),
                                 &(change->copyfrom_path),
                                 root, path, result_pool));
      change->copyfrom_known = TRUE;
    }
  *copyfrom_rev = change->copyfrom_rev;
  *copyfrom_path = change->copyfrom_path;

  if (*copyfrom_path && SVN_IS_VALID_REVNUM(*copyfrom_rev))
    {
      SVN_ERR(svn_fs_revision_root(copyfrom_root,
                                   svn_fs_root_fs(root),
                                   *copyfrom_rev, result_pool));

      if (authz_read_func)
        {
          SVN_ERR(authz_read_func(src_readable, *copyfrom_root,
                                  *copyfrom_path,
                                  authz_read_baton, result_pool));
        }
      else
        *src_readable = TRUE;
    }
  else
    {
      *copyfrom_root = ((void*)0);

    }
  return SVN_NO_ERROR;
}
