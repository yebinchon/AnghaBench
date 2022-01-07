
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_txdelta_stream_t ;
typedef int svn_error_t ;
typedef int node_revision_t ;
struct TYPE_5__ {scalar_t__ kind; int fs; } ;
typedef TYPE_1__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_FILE ;
 int get_node_revision (int **,TYPE_1__*) ;
 int * svn_error_createf (int ,int *,char*) ;
 int * svn_fs_fs__get_file_delta_stream (int **,int ,int *,int *,int *) ;
 scalar_t__ svn_node_file ;

svn_error_t *
svn_fs_fs__dag_get_file_delta_stream(svn_txdelta_stream_t **stream_p,
                                     dag_node_t *source,
                                     dag_node_t *target,
                                     apr_pool_t *pool)
{
  node_revision_t *src_noderev;
  node_revision_t *tgt_noderev;


  if ((source && source->kind != svn_node_file)
      || target->kind != svn_node_file)
    return svn_error_createf
      (SVN_ERR_FS_NOT_FILE, ((void*)0),
       "Attempted to get textual contents of a *non*-file node");


  if (source)
    SVN_ERR(get_node_revision(&src_noderev, source));
  else
    src_noderev = ((void*)0);
  SVN_ERR(get_node_revision(&tgt_noderev, target));


  return svn_fs_fs__get_file_delta_stream(stream_p, target->fs,
                                          src_noderev, tgt_noderev, pool);
}
