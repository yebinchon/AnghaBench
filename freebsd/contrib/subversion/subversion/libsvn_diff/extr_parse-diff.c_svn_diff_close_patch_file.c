
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int apr_file; } ;
typedef TYPE_1__ svn_patch_file_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int * svn_error_trace (int ) ;
 int svn_io_file_close (int ,int *) ;

svn_error_t *
svn_diff_close_patch_file(svn_patch_file_t *patch_file,
                          apr_pool_t *scratch_pool)
{
  return svn_error_trace(svn_io_file_close(patch_file->apr_file,
                                           scratch_pool));
}
