
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;
typedef size_t apr_int64_t ;


 int * SVN_NO_ERROR ;

svn_error_t *
svn_fs_fs__get_sharded_offset(void **out,
                              const void *data,
                              apr_size_t data_len,
                              void *baton,
                              apr_pool_t *pool)
{
  const apr_off_t *manifest = data;
  apr_int64_t shard_pos = *(apr_int64_t *)baton;

  *(apr_off_t *)out = manifest[shard_pos];

  return SVN_NO_ERROR;
}
