
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_x__batch_fsync_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_x__batch_fsync_run (int *,int *) ;
 int svn_fs_x__move_into_place (int ,char const*,char const*,int *,int *) ;
 char* svn_fs_x__path_current (int *,int *) ;
 int svn_fs_x__path_next (int *,int *) ;
 int write_next_file (int *,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
bump_current(svn_fs_t *fs,
             svn_revnum_t new_rev,
             svn_fs_x__batch_fsync_t *batch,
             apr_pool_t *scratch_pool)
{
  const char *current_filename;


  SVN_ERR(write_next_file(fs, new_rev, batch, scratch_pool));


  SVN_ERR(svn_fs_x__batch_fsync_run(batch, scratch_pool));


  current_filename = svn_fs_x__path_current(fs, scratch_pool);
  SVN_ERR(svn_fs_x__move_into_place(svn_fs_x__path_next(fs, scratch_pool),
                                    current_filename, current_filename,
                                    batch, scratch_pool));


  SVN_ERR(svn_fs_x__batch_fsync_run(batch, scratch_pool));

  return SVN_NO_ERROR;
}
