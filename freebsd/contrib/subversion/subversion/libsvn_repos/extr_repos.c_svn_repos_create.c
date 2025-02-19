
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int format; int db_path; int fs; int fs_type; } ;
typedef TYPE_1__ svn_repos_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int DEFAULT_FS_TYPE ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_REPOS_BAD_ARGS ;
 int SVN_ERR_W (int ,int ) ;
 int SVN_FS_CONFIG_FS_TYPE ;
 int SVN_FS_CONFIG_PRE_1_4_COMPATIBLE ;
 int * SVN_NO_ERROR ;
 int SVN_REPOS__FORMAT ;
 int SVN_REPOS__FORMAT_NUMBER ;
 int SVN_REPOS__FORMAT_NUMBER_LEGACY ;
 int _ (char*) ;
 int create_repos_structure (TYPE_1__*,char const*,int *,int *) ;
 TYPE_1__* create_svn_repos_t (char const*,int *) ;
 int lock_repos (TYPE_1__*,int ,int ,int *) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int svn_dirent_join (char const*,int ,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_error_compose_create (int *,int ) ;
 int * svn_error_createf (int ,int *,int ,int ,...) ;
 int * svn_error_trace (int ) ;
 int * svn_fs_create2 (int *,int ,int *,int *,int *) ;
 scalar_t__ svn_hash__get_bool (int *,int ,int ) ;
 int svn_hash__get_cstring (int *,int ,int ) ;
 int svn_io_remove_dir2 (char const*,int ,int *,int *,int *) ;
 int svn_io_write_version_file (int ,int ,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 char* svn_repos_find_root_path (char const*,int *) ;

svn_error_t *
svn_repos_create(svn_repos_t **repos_p,
                 const char *path,
                 const char *unused_1,
                 const char *unused_2,
                 apr_hash_t *config,
                 apr_hash_t *fs_config,
                 apr_pool_t *result_pool)
{
  svn_repos_t *repos;
  svn_error_t *err;
  apr_pool_t *scratch_pool = svn_pool_create(result_pool);
  const char *root_path;
  const char *local_abspath;


  repos = create_svn_repos_t(path, result_pool);
  repos->format = SVN_REPOS__FORMAT_NUMBER;


  repos->fs_type = svn_hash__get_cstring(fs_config, SVN_FS_CONFIG_FS_TYPE,
                                         DEFAULT_FS_TYPE);
  if (svn_hash__get_bool(fs_config, SVN_FS_CONFIG_PRE_1_4_COMPATIBLE, FALSE))
    repos->format = SVN_REPOS__FORMAT_NUMBER_LEGACY;


  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, scratch_pool));
  root_path = svn_repos_find_root_path(local_abspath, scratch_pool);
  if (root_path != ((void*)0))
    {
      if (strcmp(root_path, local_abspath) == 0)
        return svn_error_createf(SVN_ERR_REPOS_BAD_ARGS, ((void*)0),
                                 _("'%s' is an existing repository"),
                                 svn_dirent_local_style(root_path,
                                                        scratch_pool));
      else
        return svn_error_createf(SVN_ERR_REPOS_BAD_ARGS, ((void*)0),
                                 _("'%s' is a subdirectory of an existing "
                                   "repository " "rooted at '%s'"),
                                 svn_dirent_local_style(local_abspath,
                                                        scratch_pool),
                                 svn_dirent_local_style(root_path,
                                                        scratch_pool));
    }


  SVN_ERR_W(create_repos_structure(repos, path, fs_config, scratch_pool),
            _("Repository creation failed"));


  SVN_ERR(lock_repos(repos, FALSE, FALSE, scratch_pool));


  if ((err = svn_fs_create2(&repos->fs, repos->db_path, fs_config,
                            result_pool, scratch_pool)))
    {





      svn_pool_destroy(scratch_pool);

      return svn_error_trace(
                   svn_error_compose_create(
                        err,
                        svn_io_remove_dir2(path, FALSE, ((void*)0), ((void*)0),
                                           result_pool)));
    }


  SVN_ERR(svn_io_write_version_file
          (svn_dirent_join(path, SVN_REPOS__FORMAT, scratch_pool),
           repos->format, scratch_pool));

  svn_pool_destroy(scratch_pool);

  *repos_p = repos;
  return SVN_NO_ERROR;
}
