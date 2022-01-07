
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int serf_context_t ;
typedef int apr_pool_t ;


 int * serf_context_create_ex (int *,int *,int *,int *) ;

serf_context_t *serf_context_create(apr_pool_t *pool)
{
    return serf_context_create_ex(((void*)0), ((void*)0), ((void*)0), pool);
}
