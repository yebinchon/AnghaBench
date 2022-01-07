
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int block_size; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;
typedef int apr_file_t ;


 int * svn_error_trace (int ) ;
 int svn_io_file_aligned_seek (int *,int ,int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
aligned_seek(svn_fs_t *fs,
             apr_file_t *file,
             apr_off_t *buffer_start,
             apr_off_t offset,
             apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  return svn_error_trace(svn_io_file_aligned_seek(file, ffd->block_size,
                                                  buffer_start, offset,
                                                  pool));
}
