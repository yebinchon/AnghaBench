
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_status_t ;


 int APR_SUCCESS ;
 int * bdb_cache ;
 int * bdb_cache_lock ;

__attribute__((used)) static apr_status_t
clear_cache(void *data)
{
  bdb_cache = ((void*)0);
  bdb_cache_lock = ((void*)0);
  return APR_SUCCESS;
}
