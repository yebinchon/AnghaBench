
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_fs_root_t ;
typedef int svn_error_t ;
struct TYPE_3__ {scalar_t__ kind; int time; int last_author; int created_rev; int has_props; int size; } ;
typedef TYPE_1__ svn_dirent_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_INVALID_FILESIZE ;
 int * SVN_NO_ERROR ;
 int svn_fs_file_length (int *,int *,char const*,int *) ;
 int svn_fs_node_has_props (int *,int *,char const*,int *) ;
 scalar_t__ svn_node_file ;
 int svn_repos_get_committed_info (int *,char const**,int *,int *,char const*,int *) ;
 int svn_time_from_cstring (int *,char const*,int *) ;

__attribute__((used)) static svn_error_t *
fill_dirent(svn_dirent_t *dirent,
            svn_fs_root_t *root,
            const char *path,
            apr_pool_t *scratch_pool)
{
  const char *datestring;

  if (dirent->kind == svn_node_file)
    SVN_ERR(svn_fs_file_length(&(dirent->size), root, path, scratch_pool));
  else
    dirent->size = SVN_INVALID_FILESIZE;

  SVN_ERR(svn_fs_node_has_props(&dirent->has_props, root, path,
                                scratch_pool));

  SVN_ERR(svn_repos_get_committed_info(&(dirent->created_rev),
                                       &datestring,
                                       &(dirent->last_author),
                                       root, path, scratch_pool));
  if (datestring)
    SVN_ERR(svn_time_from_cstring(&(dirent->time), datestring,
                                  scratch_pool));

  return SVN_NO_ERROR;
}
