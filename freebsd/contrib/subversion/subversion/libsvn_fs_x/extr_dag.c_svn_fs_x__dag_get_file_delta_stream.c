
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_txdelta_stream_t ;
struct TYPE_7__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_fs_x__noderev_t ;
typedef int svn_error_t ;
struct TYPE_8__ {int fs; TYPE_1__* node_revision; } ;
typedef TYPE_2__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR_FS_NOT_FILE ;
 int * svn_error_createf (int ,int *,char*) ;
 int * svn_fs_x__get_file_delta_stream (int **,int ,TYPE_1__*,TYPE_1__*,int *,int *) ;
 scalar_t__ svn_node_file ;

svn_error_t *
svn_fs_x__dag_get_file_delta_stream(svn_txdelta_stream_t **stream_p,
                                    dag_node_t *source,
                                    dag_node_t *target,
                                    apr_pool_t *result_pool,
                                    apr_pool_t *scratch_pool)
{
  svn_fs_x__noderev_t *src_noderev = source ? source->node_revision : ((void*)0);
  svn_fs_x__noderev_t *tgt_noderev = target->node_revision;


  if ((source && src_noderev->kind != svn_node_file)
      || tgt_noderev->kind != svn_node_file)
    return svn_error_createf
      (SVN_ERR_FS_NOT_FILE, ((void*)0),
       "Attempted to get textual contents of a *non*-file node");


  return svn_fs_x__get_file_delta_stream(stream_p, target->fs,
                                         src_noderev, tgt_noderev,
                                         result_pool, scratch_pool);
}
