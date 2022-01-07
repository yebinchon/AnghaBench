
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ svn_txdelta_window_handler_t ;
typedef int svn_txdelta_stream_t ;
typedef int (* svn_txdelta_stream_open_func_t ) (int **,void*,int *,int *) ;
typedef int svn_error_t ;
struct TYPE_3__ {int (* apply_textdelta ) (void*,char const*,int *,scalar_t__*,void**) ;} ;
typedef TYPE_1__ svn_delta_editor_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (void*,char const*,int *,scalar_t__*,void**) ;
 scalar_t__ svn_delta_noop_window_handler ;
 int svn_txdelta_send_txstream (int *,scalar_t__,void*,int *) ;

__attribute__((used)) static svn_error_t *
apply_textdelta_stream(const svn_delta_editor_t *editor,
                       void *file_baton,
                       const char *base_checksum,
                       svn_txdelta_stream_open_func_t open_func,
                       void *open_baton,
                       apr_pool_t *scratch_pool)
{
  svn_txdelta_window_handler_t handler;
  void *handler_baton;

  SVN_ERR(editor->apply_textdelta(file_baton, base_checksum,
                                  scratch_pool, &handler,
                                  &handler_baton));
  if (handler != svn_delta_noop_window_handler)
    {
      svn_txdelta_stream_t *txdelta_stream;

      SVN_ERR(open_func(&txdelta_stream, open_baton, scratch_pool,
                        scratch_pool));
      SVN_ERR(svn_txdelta_send_txstream(txdelta_stream, handler,
                                        handler_baton, scratch_pool));
    }

  return SVN_NO_ERROR;
}
