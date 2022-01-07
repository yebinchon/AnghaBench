
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svnlook_ctxt_t ;
typedef int svn_stream_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_FILE ;
 int _ (char*) ;
 int check_cancel ;
 int get_root (int **,int *,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_fs_file_contents (int **,int *,char const*,int *) ;
 scalar_t__ svn_node_file ;
 int * svn_stream_copy3 (int *,int ,int ,int *,int *) ;
 int svn_stream_disown (int *,int *) ;
 int svn_stream_for_stdout (int **,int *) ;
 int verify_path (scalar_t__*,int *,char const*,int *) ;

__attribute__((used)) static svn_error_t *
do_cat(svnlook_ctxt_t *c, const char *path, apr_pool_t *pool)
{
  svn_fs_root_t *root;
  svn_node_kind_t kind;
  svn_stream_t *fstream, *stdout_stream;

  SVN_ERR(get_root(&root, c, pool));
  SVN_ERR(verify_path(&kind, root, path, pool));

  if (kind != svn_node_file)
    return svn_error_createf
      (SVN_ERR_FS_NOT_FILE, ((void*)0), _("Path '%s' is not a file"), path);



  SVN_ERR(svn_fs_file_contents(&fstream, root, path, pool));
  SVN_ERR(svn_stream_for_stdout(&stdout_stream, pool));

  return svn_stream_copy3(fstream, svn_stream_disown(stdout_stream, pool),
                          check_cancel, ((void*)0), pool);
}
