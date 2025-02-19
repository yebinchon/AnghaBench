
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ sview_len; scalar_t__ src_ops; scalar_t__ tview_len; } ;
typedef TYPE_2__ svn_txdelta_window_t ;
typedef int svn_error_t ;
struct compose_handler_baton {int done; scalar_t__ init; int * window_pool; TYPE_2__* window; TYPE_1__* trail; int source_buf; } ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;
struct TYPE_10__ {scalar_t__ pool; } ;


 scalar_t__ FALSE ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 void* TRUE ;
 int apr_palloc (int *,scalar_t__) ;
 int * svn_pool_create (scalar_t__) ;
 int svn_pool_destroy (int *) ;
 int svn_txdelta_apply_instructions (TYPE_2__*,int *,int ,scalar_t__*) ;
 TYPE_2__* svn_txdelta_compose_windows (TYPE_2__*,TYPE_2__*,int *) ;
 TYPE_2__* svn_txdelta_window_dup (TYPE_2__*,int *) ;

__attribute__((used)) static svn_error_t *
compose_handler(svn_txdelta_window_t *window, void *baton)
{
  struct compose_handler_baton *cb = baton;
  SVN_ERR_ASSERT(!cb->done || window == ((void*)0));
  SVN_ERR_ASSERT(cb->trail && cb->trail->pool);

  if (!cb->init && !window)
    return SVN_NO_ERROR;



  SVN_ERR_ASSERT(!cb->source_buf);

  if (cb->window)
    {
      if (window && (window->sview_len == 0 || window->src_ops == 0))
        {




          apr_size_t source_len = window->tview_len;
          SVN_ERR_ASSERT(cb->window->sview_len == source_len);
          cb->source_buf = apr_palloc(cb->window_pool, source_len);
          svn_txdelta_apply_instructions(window, ((void*)0),
                                         cb->source_buf, &source_len);
          cb->done = TRUE;
        }
      else
        {

          apr_pool_t *composite_pool = svn_pool_create(cb->trail->pool);
          svn_txdelta_window_t *composite;

          composite = svn_txdelta_compose_windows(window, cb->window,
                                                  composite_pool);
          svn_pool_destroy(cb->window_pool);
          cb->window = composite;
          cb->window_pool = composite_pool;
          cb->done = (composite->sview_len == 0 || composite->src_ops == 0);
        }
    }
  else if (window)
    {

      apr_pool_t *window_pool = svn_pool_create(cb->trail->pool);
      SVN_ERR_ASSERT(cb->window_pool == ((void*)0));
      cb->window = svn_txdelta_window_dup(window, window_pool);
      cb->window_pool = window_pool;
      cb->done = (window->sview_len == 0 || window->src_ops == 0);
    }
  else
    cb->done = TRUE;

  cb->init = FALSE;
  return SVN_NO_ERROR;
}
