
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
struct TYPE_5__ {TYPE_1__ window; } ;
typedef TYPE_2__ svn_fs_fs__raw_cached_window_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int svn_temp_deserializer__resolve (TYPE_2__*,void**) ;

svn_error_t *
svn_fs_fs__deserialize_raw_window(void **item,
                                  void *buffer,
                                  apr_size_t buffer_size,
                                  apr_pool_t *pool)
{
  svn_fs_fs__raw_cached_window_t *window =
      (svn_fs_fs__raw_cached_window_t *)buffer;


  svn_temp_deserializer__resolve(window, (void **)&window->window.data);


  *item = buffer;

  return SVN_NO_ERROR;
}
