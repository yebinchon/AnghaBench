
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pool; int result_checksum; int node; int file_stream; } ;
typedef TYPE_1__ text_baton_t ;
typedef int svn_error_t ;


 int SVN_ERR (int ) ;
 int * svn_fs_x__dag_finalize_edits (int ,int ,int ) ;
 int svn_stream_close (int ) ;

__attribute__((used)) static svn_error_t *
text_stream_closer(void *baton)
{
  text_baton_t *tb = baton;




  SVN_ERR(svn_stream_close(tb->file_stream));


  return svn_fs_x__dag_finalize_edits(tb->node, tb->result_checksum,
                                       tb->pool);
}
