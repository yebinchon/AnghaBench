
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int new_data; int ops; struct TYPE_5__* window; } ;
typedef TYPE_1__ svn_txdelta_window_t ;
typedef int svn_string_t ;
typedef TYPE_1__ svn_fs_fs__txdelta_cached_window_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int deserialize_svn_string (TYPE_1__*,int **) ;
 int svn_temp_deserializer__resolve (TYPE_1__*,void**) ;

svn_error_t *
svn_fs_fs__deserialize_txdelta_window(void **item,
                                      void *buffer,
                                      apr_size_t buffer_size,
                                      apr_pool_t *pool)
{
  svn_txdelta_window_t *window;


  svn_fs_fs__txdelta_cached_window_t *window_info =
      (svn_fs_fs__txdelta_cached_window_t *)buffer;


  svn_temp_deserializer__resolve(window_info,
                                 (void **)&window_info->window);
  window = window_info->window;

  svn_temp_deserializer__resolve(window, (void **)&window->ops);

  deserialize_svn_string(window, (svn_string_t**)&window->new_data);


  *item = window_info;

  return SVN_NO_ERROR;
}
