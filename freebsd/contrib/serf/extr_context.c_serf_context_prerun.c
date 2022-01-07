
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int serf_context_t ;
typedef int apr_status_t ;


 int APR_SUCCESS ;
 int check_dirty_pollsets (int *) ;
 int serf__open_connections (int *) ;

apr_status_t serf_context_prerun(serf_context_t *ctx)
{
    apr_status_t status = APR_SUCCESS;
    if ((status = serf__open_connections(ctx)) != APR_SUCCESS)
        return status;

    if ((status = check_dirty_pollsets(ctx)) != APR_SUCCESS)
        return status;
    return status;
}
