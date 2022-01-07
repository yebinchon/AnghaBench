
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pool; int result_checksum; int node; int interpreter_baton; int (* interpreter ) (int *,int ) ;} ;
typedef TYPE_1__ txdelta_baton_t ;
typedef int svn_txdelta_window_t ;
typedef int svn_error_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int *,int ) ;
 int svn_fs_fs__dag_finalize_edits (int ,int ,int ) ;

__attribute__((used)) static svn_error_t *
window_consumer(svn_txdelta_window_t *window, void *baton)
{
  txdelta_baton_t *tb = (txdelta_baton_t *) baton;




  SVN_ERR(tb->interpreter(window, tb->interpreter_baton));



  if (! window)
    SVN_ERR(svn_fs_fs__dag_finalize_edits(tb->node, tb->result_checksum,
                                          tb->pool));

  return SVN_NO_ERROR;
}
