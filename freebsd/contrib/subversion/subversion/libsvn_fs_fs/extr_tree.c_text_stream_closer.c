
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct text_baton_t {int pool; int result_checksum; int node; int file_stream; } ;


 int SVN_ERR (int ) ;
 int * svn_fs_fs__dag_finalize_edits (int ,int ,int ) ;
 int svn_stream_close (int ) ;

__attribute__((used)) static svn_error_t *
text_stream_closer(void *baton)
{
  struct text_baton_t *tb = baton;




  SVN_ERR(svn_stream_close(tb->file_stream));


  return svn_fs_fs__dag_finalize_edits(tb->node, tb->result_checksum,
                                       tb->pool);
}
