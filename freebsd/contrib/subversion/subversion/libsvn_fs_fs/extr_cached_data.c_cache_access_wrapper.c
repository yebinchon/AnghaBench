
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_2__ {int baton; int (* func ) (unsigned char const*,scalar_t__,int ,int *) ;} ;
typedef TYPE_1__ cache_access_wrapper_baton_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (unsigned char const*,scalar_t__,int ,int *) ;

__attribute__((used)) static svn_error_t *
cache_access_wrapper(void **out,
                     const void *data,
                     apr_size_t data_len,
                     void *baton,
                     apr_pool_t *pool)
{
  cache_access_wrapper_baton_t *wrapper_baton = baton;

  SVN_ERR(wrapper_baton->func((const unsigned char *)data,
                              data_len - 1,
                              wrapper_baton->baton,
                              pool));


  *out = baton;

  return SVN_NO_ERROR;
}
