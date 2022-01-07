
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int end_offset; } ;
typedef TYPE_1__ svn_fs_fs__raw_cached_window_t ;
typedef int svn_error_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;


 int * SVN_NO_ERROR ;

__attribute__((used)) static svn_error_t *
get_raw_window_end(void **out,
                   const void *data,
                   apr_size_t data_len,
                   void *baton,
                   apr_pool_t *result_pool)
{
  const svn_fs_fs__raw_cached_window_t *window
    = (const svn_fs_fs__raw_cached_window_t *)data;
  *(apr_off_t*)out = window->end_offset;

  return SVN_NO_ERROR;
}
