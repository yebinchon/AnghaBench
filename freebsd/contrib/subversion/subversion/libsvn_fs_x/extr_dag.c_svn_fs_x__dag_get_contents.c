
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_error_t ;
struct TYPE_5__ {TYPE_1__* node_revision; int fs; } ;
typedef TYPE_2__ dag_node_t ;
typedef int apr_pool_t ;
struct TYPE_4__ {scalar_t__ kind; int data_rep; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_FILE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int * svn_error_createf (int ,int *,char*) ;
 int svn_fs_x__get_contents (int **,int ,int ,int ,int *) ;
 scalar_t__ svn_node_file ;

svn_error_t *
svn_fs_x__dag_get_contents(svn_stream_t **contents_p,
                           dag_node_t *file,
                           apr_pool_t *result_pool)
{

  if (file->node_revision->kind != svn_node_file)
    return svn_error_createf
      (SVN_ERR_FS_NOT_FILE, ((void*)0),
       "Attempted to get textual contents of a *non*-file node");


  SVN_ERR(svn_fs_x__get_contents(contents_p, file->fs,
                                 file->node_revision->data_rep, TRUE,
                                 result_pool));

  return SVN_NO_ERROR;
}
