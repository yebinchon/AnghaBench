
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * (* svn_txdelta_window_handler_t ) (int *,void*) ;
typedef int svn_txdelta_stream_t ;
typedef int svn_error_t ;
struct context {scalar_t__ text_deltas; TYPE_1__* editor; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int (* apply_textdelta ) (void*,char const*,int *,int * (*) (int *,void*),void**) ;} ;


 int SVN_ERR (int ) ;
 int stub1 (void*,char const*,int *,int * (*) (int *,void*),void**) ;
 int * svn_txdelta_send_txstream (int *,int * (*) (int *,void*),void*,int *) ;

__attribute__((used)) static svn_error_t *
send_text_delta(struct context *c,
                void *file_baton,
                const char *base_checksum,
                svn_txdelta_stream_t *delta_stream,
                apr_pool_t *pool)
{
  svn_txdelta_window_handler_t delta_handler;
  void *delta_handler_baton;


  SVN_ERR(c->editor->apply_textdelta
          (file_baton, base_checksum, pool,
           &delta_handler, &delta_handler_baton));

  if (c->text_deltas && delta_stream)
    {

      return svn_txdelta_send_txstream(delta_stream,
                                       delta_handler,
                                       delta_handler_baton,
                                       pool);
    }
  else
    {


      return delta_handler(((void*)0), delta_handler_baton);
    }
}
