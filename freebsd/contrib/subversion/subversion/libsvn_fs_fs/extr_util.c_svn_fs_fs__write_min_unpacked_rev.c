
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_5__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_6__ {int flush_to_disk; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef size_t apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_INT64_BUFFER_SIZE ;
 int * SVN_NO_ERROR ;
 size_t svn__i64toa (char*,int ) ;
 char* svn_fs_fs__path_min_unpacked_rev (TYPE_1__*,int *) ;
 int svn_io_write_atomic2 (char const*,char*,size_t,char const*,int ,int *) ;

svn_error_t *
svn_fs_fs__write_min_unpacked_rev(svn_fs_t *fs,
                                  svn_revnum_t revnum,
                                  apr_pool_t *scratch_pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  const char *final_path;
  char buf[SVN_INT64_BUFFER_SIZE];
  apr_size_t len = svn__i64toa(buf, revnum);
  buf[len] = '\n';

  final_path = svn_fs_fs__path_min_unpacked_rev(fs, scratch_pool);

  SVN_ERR(svn_io_write_atomic2(final_path, buf, len + 1,
                               final_path ,
                               ffd->flush_to_disk, scratch_pool));

  return SVN_NO_ERROR;
}
