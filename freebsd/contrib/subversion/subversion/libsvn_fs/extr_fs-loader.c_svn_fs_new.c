
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int * fs_new (int *,int *) ;

svn_fs_t *
svn_fs_new(apr_hash_t *fs_config, apr_pool_t *pool)
{
  return fs_new(fs_config, pool);
}
