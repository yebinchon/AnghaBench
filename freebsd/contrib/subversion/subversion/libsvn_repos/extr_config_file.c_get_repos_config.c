
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_fs_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_boolean_t ;
struct TYPE_4__ {int pool; int * repos; } ;
typedef TYPE_1__ config_access_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int handle_missing_file (int **,int **,TYPE_1__*,char const*,int ,scalar_t__) ;
 int * representation_stream (int *,char const*,int ) ;
 size_t strlen (char const*) ;
 int svn_checksum_md5 ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_dirent_is_ancestor (char const*,char const*) ;
 int * svn_error_trace (int ) ;
 int svn_fs_check_path (scalar_t__*,int *,char const*,int *) ;
 int svn_fs_file_checksum (int **,int ,int *,char const*,int ,int ) ;
 int svn_fs_revision_root (int **,int *,int ,int ) ;
 int svn_fs_youngest_rev (int *,int *,int *) ;
 scalar_t__ svn_node_file ;
 char* svn_repos_find_root_path (char const*,int *) ;
 int * svn_repos_fs (int *) ;
 int svn_repos_open3 (int **,char const*,int *,int ,int *) ;
 char* svn_repos_path (int *,int *) ;
 int svn_uri_get_dirent_from_file_url (char const**,char const*,int ) ;

__attribute__((used)) static svn_error_t *
get_repos_config(svn_stream_t **stream,
                 svn_checksum_t **checksum,
                 config_access_t *access,
                 const char *url,
                 svn_boolean_t must_exist,
                 apr_pool_t *scratch_pool)
{
  svn_fs_t *fs;
  svn_fs_root_t *root;
  svn_revnum_t youngest_rev;
  svn_node_kind_t node_kind;
  const char *dirent;
  const char *fs_path;
  const char *repos_root_dirent;

  SVN_ERR(svn_uri_get_dirent_from_file_url(&dirent, url, access->pool));



  if (access->repos)
    {
      repos_root_dirent = svn_repos_path(access->repos, scratch_pool);
      if (!svn_dirent_is_absolute(repos_root_dirent))
        SVN_ERR(svn_dirent_get_absolute(&repos_root_dirent,
                                        repos_root_dirent,
                                        scratch_pool));

      if (!svn_dirent_is_ancestor(repos_root_dirent, dirent))
        access->repos = ((void*)0);
    }


  if (!access->repos)
    {

      repos_root_dirent = svn_repos_find_root_path(dirent, scratch_pool);


      SVN_ERR(svn_repos_open3(&access->repos, repos_root_dirent, ((void*)0),
                              access->pool, scratch_pool));
    }

  fs_path = &dirent[strlen(repos_root_dirent)];


  fs = svn_repos_fs(access->repos);


  SVN_ERR(svn_fs_youngest_rev(&youngest_rev, fs, scratch_pool));
  SVN_ERR(svn_fs_revision_root(&root, fs, youngest_rev, access->pool));


  SVN_ERR(svn_fs_check_path(&node_kind, root, fs_path, scratch_pool));
  if (node_kind != svn_node_file)
    return svn_error_trace(handle_missing_file(stream, checksum, access,
                                               url, must_exist, node_kind));


  SVN_ERR(svn_fs_file_checksum(checksum, svn_checksum_md5, root, fs_path,
                               TRUE, access->pool));

  *stream = representation_stream(root, fs_path, access->pool);

  return SVN_NO_ERROR;
}
