
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int serf_bucket_t ;
typedef int apr_status_t ;
typedef int apr_size_t ;


 int APR_ENOTIMPL ;

__attribute__((used)) static apr_status_t serf_iovec_readline(serf_bucket_t *bucket,
                                         int acceptable, int *found,
                                         const char **data, apr_size_t *len)
{
    return APR_ENOTIMPL;
}
