
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_error_t ;
struct TYPE_6__ {int data_rep; } ;
typedef TYPE_1__ node_revision_t ;
struct TYPE_7__ {scalar_t__ kind; int fs; } ;
typedef TYPE_2__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_FILE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int get_node_revision (TYPE_1__**,TYPE_2__*) ;
 int * svn_error_createf (int ,int *,char*) ;
 int svn_fs_fs__get_contents (int **,int ,int ,int ,int *) ;
 scalar_t__ svn_node_file ;

svn_error_t *
svn_fs_fs__dag_get_contents(svn_stream_t **contents_p,
                            dag_node_t *file,
                            apr_pool_t *pool)
{
  node_revision_t *noderev;
  svn_stream_t *contents;


  if (file->kind != svn_node_file)
    return svn_error_createf
      (SVN_ERR_FS_NOT_FILE, ((void*)0),
       "Attempted to get textual contents of a *non*-file node");


  SVN_ERR(get_node_revision(&noderev, file));


  SVN_ERR(svn_fs_fs__get_contents(&contents, file->fs,
                                  noderev->data_rep, TRUE, pool));

  *contents_p = contents;

  return SVN_NO_ERROR;
}
