
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pool; TYPE_1__* root; int target_stream; TYPE_3__* target_string; int interpreter_baton; int (* interpreter ) (int *,int ) ;} ;
typedef TYPE_2__ txdelta_baton_t ;
typedef int svn_txdelta_window_t ;
typedef int svn_error_t ;
typedef scalar_t__ apr_size_t ;
struct TYPE_7__ {scalar_t__ len; int data; } ;
struct TYPE_5__ {int fs; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ WRITE_BUFFER_SIZE ;
 int stub1 (int *,int ) ;
 int svn_fs_base__retry_txn (int ,int ,TYPE_2__*,int ,int ) ;
 int svn_stream_close (int ) ;
 int svn_stream_write (int ,int ,scalar_t__*) ;
 int svn_stringbuf_setempty (TYPE_3__*) ;
 int txn_body_txdelta_finalize_edits ;

__attribute__((used)) static svn_error_t *
window_consumer(svn_txdelta_window_t *window, void *baton)
{
  txdelta_baton_t *tb = (txdelta_baton_t *) baton;




  SVN_ERR(tb->interpreter(window, tb->interpreter_baton));
  if ((! window) || (tb->target_string->len > WRITE_BUFFER_SIZE))
    {
      apr_size_t len = tb->target_string->len;
      SVN_ERR(svn_stream_write(tb->target_stream,
                               tb->target_string->data,
                               &len));
      svn_stringbuf_setempty(tb->target_string);
    }


  if (! window)
    {



      SVN_ERR(svn_stream_close(tb->target_stream));


      SVN_ERR(svn_fs_base__retry_txn(tb->root->fs,
                                     txn_body_txdelta_finalize_edits, tb,
                                     FALSE, tb->pool));
    }

  return SVN_NO_ERROR;
}
