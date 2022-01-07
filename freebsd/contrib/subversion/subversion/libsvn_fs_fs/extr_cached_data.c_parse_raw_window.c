
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int len; int data; } ;
typedef TYPE_2__ svn_string_t ;
typedef int svn_stream_t ;
struct TYPE_10__ {int end_offset; int window; } ;
typedef TYPE_3__ svn_fs_fs__txdelta_cached_window_t ;
struct TYPE_8__ {int len; int data; } ;
struct TYPE_11__ {int end_offset; int ver; TYPE_1__ window; } ;
typedef TYPE_4__ svn_fs_fs__raw_cached_window_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_3__* apr_pcalloc (int *,int) ;
 int * svn_stream_from_string (TYPE_2__*,int *) ;
 int svn_temp_deserializer__ptr (TYPE_4__ const*,void const* const*) ;
 int svn_txdelta_read_svndiff_window (int *,int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
parse_raw_window(void **out,
                 const void *data,
                 apr_size_t data_len,
                 void *baton,
                 apr_pool_t *result_pool)
{
  svn_string_t raw_window;
  svn_stream_t *stream;


  const svn_fs_fs__raw_cached_window_t *window
    = (const svn_fs_fs__raw_cached_window_t *)data;
  svn_fs_fs__txdelta_cached_window_t *result
    = apr_pcalloc(result_pool, sizeof(*result));


  raw_window.data = svn_temp_deserializer__ptr(window,
                                (const void * const *)&window->window.data);
  raw_window.len = window->window.len;
  stream = svn_stream_from_string(&raw_window, result_pool);


  SVN_ERR(svn_txdelta_read_svndiff_window(&result->window, stream, window->ver,
                                          result_pool));


  result->end_offset = window->end_offset;
  *out = result;

  return SVN_NO_ERROR;
}
