
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_repos_t ;
typedef int svn_repos_revision_access_level_t ;
typedef int (* svn_repos_authz_func_t ) (scalar_t__*,int *,char const*,void*,int *) ;
typedef int svn_fs_t ;
typedef int svn_fs_root_t ;
typedef int svn_fs_path_change_iterator_t ;
struct TYPE_4__ {char const* data; } ;
struct TYPE_5__ {int change_kind; TYPE_1__ path; } ;
typedef TYPE_2__ svn_fs_path_change3_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_IS_VALID_REVNUM (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int svn_fs_copied_from (int *,char const**,int *,char const*,int *) ;


 int svn_fs_path_change_get (TYPE_2__**,int *) ;


 int svn_fs_paths_changed3 (int **,int *,int *,int *) ;
 int svn_fs_revision_root (int **,int *,int ,int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_repos_fs (int *) ;
 int svn_repos_revision_access_full ;
 int svn_repos_revision_access_none ;
 int svn_repos_revision_access_partial ;

svn_error_t *
svn_repos_check_revision_access(svn_repos_revision_access_level_t *access_level,
                                svn_repos_t *repos,
                                svn_revnum_t revision,
                                svn_repos_authz_func_t authz_read_func,
                                void *authz_read_baton,
                                apr_pool_t *pool)
{
  svn_fs_t *fs = svn_repos_fs(repos);
  svn_fs_root_t *rev_root;
  svn_fs_path_change_iterator_t *iterator;
  svn_fs_path_change3_t *change;
  svn_boolean_t found_readable = FALSE;
  svn_boolean_t found_unreadable = FALSE;
  apr_pool_t *iterpool;


  *access_level = svn_repos_revision_access_full;


  if (! authz_read_func)
    return SVN_NO_ERROR;


  SVN_ERR(svn_fs_revision_root(&rev_root, fs, revision, pool));
  SVN_ERR(svn_fs_paths_changed3(&iterator, rev_root, pool, pool));
  SVN_ERR(svn_fs_path_change_get(&change, iterator));





  if (!change)
    return SVN_NO_ERROR;



  iterpool = svn_pool_create(pool);
  while (change)
    {
      svn_boolean_t readable;

      svn_pool_clear(iterpool);

      SVN_ERR(authz_read_func(&readable, rev_root, change->path.data,
                              authz_read_baton, iterpool));
      if (! readable)
        found_unreadable = TRUE;
      else
        found_readable = TRUE;



      if (found_readable && found_unreadable)
        goto decision;

      switch (change->change_kind)
        {
        case 131:
        case 128:
          {
            const char *copyfrom_path;
            svn_revnum_t copyfrom_rev;

            SVN_ERR(svn_fs_copied_from(&copyfrom_rev, &copyfrom_path,
                                       rev_root, change->path.data,
                                       iterpool));
            if (copyfrom_path && SVN_IS_VALID_REVNUM(copyfrom_rev))
              {
                svn_fs_root_t *copyfrom_root;
                SVN_ERR(svn_fs_revision_root(&copyfrom_root, fs,
                                             copyfrom_rev, iterpool));
                SVN_ERR(authz_read_func(&readable,
                                        copyfrom_root, copyfrom_path,
                                        authz_read_baton, iterpool));
                if (! readable)
                  found_unreadable = TRUE;



                if (found_readable && found_unreadable)
                  goto decision;
              }
          }
          break;

        case 130:
        case 129:
        default:
          break;
        }

      SVN_ERR(svn_fs_path_change_get(&change, iterator));
    }

 decision:
  svn_pool_destroy(iterpool);


  if (! found_readable)
    *access_level = svn_repos_revision_access_none;


  else if (found_unreadable)
    *access_level = svn_repos_revision_access_partial;


  return SVN_NO_ERROR;
}
