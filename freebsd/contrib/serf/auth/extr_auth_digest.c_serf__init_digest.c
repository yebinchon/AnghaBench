
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int serf_context_t ;
typedef int apr_status_t ;
typedef int apr_pool_t ;


 int APR_SUCCESS ;

apr_status_t
serf__init_digest(int code,
                  serf_context_t *ctx,
                  apr_pool_t *pool)
{
    return APR_SUCCESS;
}
