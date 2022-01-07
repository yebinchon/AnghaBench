
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int config; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_FS_CONFIG_FSFS_CACHE_DELTAS ;
 int SVN_FS_CONFIG_FSFS_CACHE_FULLTEXTS ;
 int SVN_FS_CONFIG_FSFS_CACHE_NODEPROPS ;
 int SVN_FS_CONFIG_FSFS_CACHE_NS ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 char* normalize_key_part (int ,int *) ;
 int svn_hash__get_bool (int ,int ,int ) ;
 int svn_hash__get_cstring (int ,int ,char*) ;

__attribute__((used)) static svn_error_t *
read_config(const char **cache_namespace,
            svn_boolean_t *cache_txdeltas,
            svn_boolean_t *cache_fulltexts,
            svn_boolean_t *cache_nodeprops,
            svn_fs_t *fs,
            apr_pool_t *pool)
{
  *cache_namespace
    = normalize_key_part(svn_hash__get_cstring(fs->config,
                                               SVN_FS_CONFIG_FSFS_CACHE_NS,
                                               ""),
                         pool);




  *cache_txdeltas
    = svn_hash__get_bool(fs->config,
                         SVN_FS_CONFIG_FSFS_CACHE_DELTAS,
                         TRUE);
  *cache_fulltexts
    = svn_hash__get_bool(fs->config,
                         SVN_FS_CONFIG_FSFS_CACHE_FULLTEXTS,
                         TRUE);





  *cache_nodeprops
    = svn_hash__get_bool(fs->config,
                         SVN_FS_CONFIG_FSFS_CACHE_NODEPROPS,
                         TRUE);
  return SVN_NO_ERROR;
}
