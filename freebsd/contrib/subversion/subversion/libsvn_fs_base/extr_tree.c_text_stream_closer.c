
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct text_baton_t {int pool; TYPE_1__* root; int file_stream; } ;
struct TYPE_2__ {int fs; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * svn_fs_base__retry_txn (int ,int ,struct text_baton_t*,int ,int ) ;
 int svn_stream_close (int ) ;
 int txn_body_fulltext_finalize_edits ;

__attribute__((used)) static svn_error_t *
text_stream_closer(void *baton)
{
  struct text_baton_t *tb = baton;




  SVN_ERR(svn_stream_close(tb->file_stream));


  return svn_fs_base__retry_txn(tb->root->fs,
                                txn_body_fulltext_finalize_edits, tb,
                                FALSE, tb->pool);
}
