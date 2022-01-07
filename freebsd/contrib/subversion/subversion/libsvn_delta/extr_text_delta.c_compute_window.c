
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {void* tview_len; void* sview_len; int sview_offset; } ;
typedef TYPE_1__ svn_txdelta_window_t ;
struct TYPE_9__ {int new_data; int member_0; } ;
typedef TYPE_2__ svn_txdelta__ops_baton_t ;
typedef int svn_filesize_t ;
typedef void* apr_size_t ;
typedef int apr_pool_t ;


 int svn_stringbuf_create_empty (int *) ;
 int svn_txdelta__insert_op (TYPE_2__*,int ,int ,void*,char const*,int *) ;
 TYPE_1__* svn_txdelta__make_window (TYPE_2__*,int *) ;
 int svn_txdelta__xdelta (TYPE_2__*,char const*,void*,void*,int *) ;
 int svn_txdelta_new ;

__attribute__((used)) static svn_txdelta_window_t *
compute_window(const char *data, apr_size_t source_len, apr_size_t target_len,
               svn_filesize_t source_offset, apr_pool_t *pool)
{
  svn_txdelta__ops_baton_t build_baton = { 0 };
  svn_txdelta_window_t *window;


  build_baton.new_data = svn_stringbuf_create_empty(pool);

  if (source_len == 0)
    svn_txdelta__insert_op(&build_baton, svn_txdelta_new, 0, target_len, data,
                           pool);
  else
    svn_txdelta__xdelta(&build_baton, data, source_len, target_len, pool);


  window = svn_txdelta__make_window(&build_baton, pool);
  window->sview_offset = source_offset;
  window->sview_len = source_len;
  window->tview_len = target_len;
  return window;
}
