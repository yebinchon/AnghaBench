
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int node_revision_t ;
struct TYPE_5__ {scalar_t__ kind; int fs; } ;
typedef TYPE_1__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_FILE ;
 int SVN_ERR_FS_NOT_MUTABLE ;
 int * SVN_NO_ERROR ;
 int get_node_revision (int **,TYPE_1__*) ;
 int * svn_error_createf (int ,int *,char*) ;
 int svn_fs_fs__dag_check_mutable (TYPE_1__*) ;
 int svn_fs_fs__set_contents (int **,int ,int *,int *) ;
 scalar_t__ svn_node_file ;

svn_error_t *
svn_fs_fs__dag_get_edit_stream(svn_stream_t **contents,
                               dag_node_t *file,
                               apr_pool_t *pool)
{
  node_revision_t *noderev;
  svn_stream_t *ws;


  if (file->kind != svn_node_file)
    return svn_error_createf
      (SVN_ERR_FS_NOT_FILE, ((void*)0),
       "Attempted to set textual contents of a *non*-file node");


  if (! svn_fs_fs__dag_check_mutable(file))
    return svn_error_createf
      (SVN_ERR_FS_NOT_MUTABLE, ((void*)0),
       "Attempted to set textual contents of an immutable node");


  SVN_ERR(get_node_revision(&noderev, file));

  SVN_ERR(svn_fs_fs__set_contents(&ws, file->fs, noderev, pool));

  *contents = ws;

  return SVN_NO_ERROR;
}
