
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_repos_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct svnadmin_opt_state {scalar_t__ no_flush_to_disk; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_2__ {scalar_t__ cache_size; } ;


 scalar_t__ BLOCK_READ_CACHE_THRESHOLD ;
 int SVN_ERR (int ) ;
 int SVN_FS_CONFIG_FSFS_BLOCK_READ ;
 int SVN_FS_CONFIG_FSFS_CACHE_DELTAS ;
 int SVN_FS_CONFIG_FSFS_CACHE_FULLTEXTS ;
 int SVN_FS_CONFIG_FSFS_CACHE_NODEPROPS ;
 int SVN_FS_CONFIG_FSFS_CACHE_NS ;
 int SVN_FS_CONFIG_FSFS_CACHE_REVPROPS ;
 int SVN_FS_CONFIG_NO_FLUSH_TO_DISK ;
 int * SVN_NO_ERROR ;
 int * apr_hash_make (int *) ;
 TYPE_1__* svn_cache_config_get () ;
 int svn_fs_set_warning_func (int ,int ,int *) ;
 int svn_hash_sets (int *,int ,char*) ;
 int svn_repos_fs (int *) ;
 int svn_repos_open3 (int **,char const*,int *,int *,int *) ;
 char* svn_uuid_generate (int *) ;
 int warning_func ;

__attribute__((used)) static svn_error_t *
open_repos(svn_repos_t **repos,
           const char *path,
           struct svnadmin_opt_state *opt_state,
           apr_pool_t *pool)
{

  svn_boolean_t use_block_read
    = svn_cache_config_get()->cache_size > BLOCK_READ_CACHE_THRESHOLD;


  apr_hash_t *fs_config = apr_hash_make(pool);
  svn_hash_sets(fs_config, SVN_FS_CONFIG_FSFS_CACHE_DELTAS, "1");
  svn_hash_sets(fs_config, SVN_FS_CONFIG_FSFS_CACHE_FULLTEXTS, "1");
  svn_hash_sets(fs_config, SVN_FS_CONFIG_FSFS_CACHE_NODEPROPS, "1");
  svn_hash_sets(fs_config, SVN_FS_CONFIG_FSFS_CACHE_REVPROPS, "2");
  svn_hash_sets(fs_config, SVN_FS_CONFIG_FSFS_CACHE_NS,
                           svn_uuid_generate(pool));
  svn_hash_sets(fs_config, SVN_FS_CONFIG_FSFS_BLOCK_READ,
                           use_block_read ? "1" : "0");
  svn_hash_sets(fs_config, SVN_FS_CONFIG_NO_FLUSH_TO_DISK,
                           opt_state->no_flush_to_disk ? "1" : "0");


  SVN_ERR(svn_repos_open3(repos, path, fs_config, pool, pool));
  svn_fs_set_warning_func(svn_repos_fs(*repos), warning_func, ((void*)0));
  return SVN_NO_ERROR;
}
