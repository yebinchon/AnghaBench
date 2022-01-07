
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ kind; scalar_t__ special; scalar_t__ filesize; scalar_t__ mtime; } ;
typedef TYPE_1__ svn_io_dirent2_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 char* svn_dirent_join (char const*,char const*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_io_dir_file_copy (char const*,char const*,char const*,int *) ;
 int svn_io_stat_dirent2 (TYPE_1__ const**,char const*,int ,int ,int *,int *) ;
 scalar_t__ svn_node_none ;

__attribute__((used)) static svn_error_t *
hotcopy_io_dir_file_copy(svn_boolean_t *skipped_p,
                         const char *src_path,
                         const char *dst_path,
                         const char *file,
                         apr_pool_t *scratch_pool)
{
  const svn_io_dirent2_t *src_dirent;
  const svn_io_dirent2_t *dst_dirent;
  const char *src_target;
  const char *dst_target;


  dst_target = svn_dirent_join(dst_path, file, scratch_pool);
  SVN_ERR(svn_io_stat_dirent2(&dst_dirent, dst_target, FALSE, TRUE,
                              scratch_pool, scratch_pool));
  if (dst_dirent->kind != svn_node_none)
    {


      src_target = svn_dirent_join(src_path, file, scratch_pool);
      SVN_ERR(svn_io_stat_dirent2(&src_dirent, src_target, FALSE, FALSE,
                                  scratch_pool, scratch_pool));
      if (src_dirent->kind == dst_dirent->kind &&
          src_dirent->special == dst_dirent->special &&
          src_dirent->filesize == dst_dirent->filesize &&
          src_dirent->mtime <= dst_dirent->mtime)
        return SVN_NO_ERROR;
    }

  if (skipped_p)
    *skipped_p = FALSE;

  return svn_error_trace(svn_io_dir_file_copy(src_path, dst_path, file,
                                              scratch_pool));
}
