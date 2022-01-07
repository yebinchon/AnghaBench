
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_4__* new_data; int ops; int src_ops; int num_ops; scalar_t__ tview_len; scalar_t__ sview_len; scalar_t__ sview_offset; } ;
typedef TYPE_2__ svn_txdelta_window_t ;
struct TYPE_9__ {TYPE_1__* new_data; int ops; int src_ops; int num_ops; } ;
typedef TYPE_3__ svn_txdelta__ops_baton_t ;
struct TYPE_10__ {int len; int data; } ;
typedef TYPE_4__ svn_string_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {int len; int data; } ;


 void* apr_palloc (int *,int) ;

svn_txdelta_window_t *
svn_txdelta__make_window(const svn_txdelta__ops_baton_t *build_baton,
                         apr_pool_t *pool)
{
  svn_txdelta_window_t *window;
  svn_string_t *new_data = apr_palloc(pool, sizeof(*new_data));

  window = apr_palloc(pool, sizeof(*window));
  window->sview_offset = 0;
  window->sview_len = 0;
  window->tview_len = 0;

  window->num_ops = build_baton->num_ops;
  window->src_ops = build_baton->src_ops;
  window->ops = build_baton->ops;




  new_data->data = build_baton->new_data->data;
  new_data->len = build_baton->new_data->len;
  window->new_data = new_data;

  return window;
}
