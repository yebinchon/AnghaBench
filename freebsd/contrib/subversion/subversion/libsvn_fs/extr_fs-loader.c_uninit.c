
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_status_t ;


 int APR_SUCCESS ;
 int * common_pool ;
 scalar_t__ common_pool_initialized ;
 int * common_pool_lock ;

__attribute__((used)) static apr_status_t uninit(void *data)
{
  common_pool = ((void*)0);
  common_pool_lock = ((void*)0);
  common_pool_initialized = 0;

  return APR_SUCCESS;
}
