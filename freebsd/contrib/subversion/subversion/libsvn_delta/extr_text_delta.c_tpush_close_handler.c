
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_txdelta_window_t ;
typedef int svn_error_t ;
struct tpush_baton {scalar_t__ target_len; int whb; int * (* wh ) (int *,int ) ;int pool; int source_offset; int source_len; int buf; } ;


 int SVN_ERR (int *) ;
 int * compute_window (int ,int ,scalar_t__,int ,int ) ;
 int * stub1 (int *,int ) ;
 int * stub2 (int *,int ) ;

__attribute__((used)) static svn_error_t *
tpush_close_handler(void *baton)
{
  struct tpush_baton *tb = baton;
  svn_txdelta_window_t *window;


  if (tb->target_len > 0)
    {
      window = compute_window(tb->buf, tb->source_len, tb->target_len,
                              tb->source_offset, tb->pool);
      SVN_ERR(tb->wh(window, tb->whb));
    }


  return tb->wh(((void*)0), tb->whb);
}
