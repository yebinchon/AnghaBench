
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int conf_path; int db_path; int fs; int fs_type; } ;
typedef TYPE_1__ svn_repos_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_MALFUNCTION_NO_RETURN () ;
 int * SVN_NO_ERROR ;
 int apr_pstrdup (int *,char const*) ;
 int check_repos_format (TYPE_1__*,int *) ;
 TYPE_1__* create_svn_repos_t (char const*,int *) ;
 int lock_repos (TYPE_1__*,scalar_t__,scalar_t__,int *) ;
 int svn_dirent_join (int ,char*,int *) ;
 int svn_error_clear (int *) ;
 int svn_fs_open2 (int *,int ,int *,int *,int *) ;
 int svn_fs_type (char const**,int ,int *) ;
 int * svn_io_check_path (int ,scalar_t__*,int *) ;
 scalar_t__ svn_node_file ;

__attribute__((used)) static svn_error_t *
get_repos(svn_repos_t **repos_p,
          const char *path,
          svn_boolean_t exclusive,
          svn_boolean_t nonblocking,
          svn_boolean_t open_fs,
          apr_hash_t *fs_config,
          apr_pool_t *result_pool,
          apr_pool_t *scratch_pool)
{
  svn_repos_t *repos;
  const char *fs_type;


  repos = create_svn_repos_t(path, result_pool);


  SVN_ERR(check_repos_format(repos, scratch_pool));


  SVN_ERR(svn_fs_type(&fs_type, repos->db_path, scratch_pool));
  repos->fs_type = apr_pstrdup(result_pool, fs_type);


  SVN_ERR(lock_repos(repos, exclusive, nonblocking, result_pool));


  if (open_fs)
    SVN_ERR(svn_fs_open2(&repos->fs, repos->db_path, fs_config,
                         result_pool, scratch_pool));
  *repos_p = repos;
  return SVN_NO_ERROR;
}
