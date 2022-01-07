
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int apr_pool_t ;


 int SVN_INT64_BUFFER_SIZE ;
 int assert (int) ;
 char const* construct_shard_sub_path (int *,int ,int ,char*,int *) ;
 int svn__i64toa (char*,int ) ;
 int svn_fs_x__is_packed_rev (int *,int ) ;
 int svn_fs_x__is_packed_revprop (int *,int ) ;

const char *
svn_fs_x__path_revprops(svn_fs_t *fs,
                        svn_revnum_t rev,
                        apr_pool_t *result_pool)
{
  char buffer[SVN_INT64_BUFFER_SIZE + 1];
  buffer[0] = 'p';
  svn__i64toa(buffer + 1, rev);

  assert(! svn_fs_x__is_packed_revprop(fs, rev));



  return construct_shard_sub_path(fs, rev,
                                  svn_fs_x__is_packed_rev(fs, rev) ,
                                  buffer, result_pool);
}
