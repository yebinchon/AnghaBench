
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ config; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int * apr_hash_copy (int *,scalar_t__) ;

apr_hash_t *
svn_fs_config(svn_fs_t *fs, apr_pool_t *pool)
{
  if (fs->config)
    return apr_hash_copy(pool, fs->config);

  return ((void*)0);
}
