
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_txdelta_window_t ;
typedef int apr_pool_t ;


 int * svn_txdelta_window_dup (int const*,int *) ;

svn_txdelta_window_t *
svn_txdelta__copy_window(const svn_txdelta_window_t *window,
                         apr_pool_t *pool)
{
  return svn_txdelta_window_dup(window, pool);
}
