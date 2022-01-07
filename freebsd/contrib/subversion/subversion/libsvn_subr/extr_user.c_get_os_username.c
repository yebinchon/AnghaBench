
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_uid_t ;
typedef int apr_pool_t ;
typedef int apr_gid_t ;


 scalar_t__ APR_SUCCESS ;
 scalar_t__ apr_uid_current (int *,int *,int *) ;
 scalar_t__ apr_uid_name_get (char**,int ,int *) ;

__attribute__((used)) static const char *
get_os_username(apr_pool_t *pool)
{
  return ((void*)0);
}
