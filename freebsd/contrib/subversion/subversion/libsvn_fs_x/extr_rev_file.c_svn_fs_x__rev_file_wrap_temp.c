
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stream; int * file; } ;
typedef TYPE_1__ svn_fs_x__revision_file_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int * SVN_NO_ERROR ;
 int TRUE ;
 TYPE_1__* create_revision_file (int *,int *) ;
 int svn_stream_from_aprfile2 (int *,int ,int *) ;

svn_error_t *
svn_fs_x__rev_file_wrap_temp(svn_fs_x__revision_file_t **file,
                             svn_fs_t *fs,
                             apr_file_t *temp_file,
                             apr_pool_t *result_pool)
{
  *file = create_revision_file(fs, result_pool);
  (*file)->file = temp_file;
  (*file)->stream = svn_stream_from_aprfile2(temp_file, TRUE, result_pool);

  return SVN_NO_ERROR;
}
