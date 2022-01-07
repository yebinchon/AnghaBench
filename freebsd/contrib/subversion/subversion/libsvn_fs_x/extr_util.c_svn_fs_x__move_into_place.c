
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_x__batch_fsync_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_fs_x__batch_fsync_new_path (int *,char const*,int *) ;
 int svn_io_copy_perms (char const*,char const*,int *) ;
 int svn_io_file_rename2 (char const*,char const*,int ,int *) ;

svn_error_t *
svn_fs_x__move_into_place(const char *old_filename,
                          const char *new_filename,
                          const char *perms_reference,
                          svn_fs_x__batch_fsync_t *batch,
                          apr_pool_t *scratch_pool)
{

  SVN_ERR(svn_io_copy_perms(perms_reference, old_filename, scratch_pool));
  SVN_ERR(svn_io_file_rename2(old_filename, new_filename, TRUE,
                              scratch_pool));


  return SVN_NO_ERROR;
}
