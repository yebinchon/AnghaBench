
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_uuid_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_UUID_FORMATTED_LENGTH ;
 char* apr_pcalloc (int *,scalar_t__) ;
 int apr_uuid_format (char*,int *) ;
 int apr_uuid_get (int *) ;

const char *
svn_uuid_generate(apr_pool_t *pool)
{
  apr_uuid_t uuid;
  char *uuid_str = apr_pcalloc(pool, APR_UUID_FORMATTED_LENGTH + 1);
  apr_uuid_get(&uuid);
  apr_uuid_format(uuid_str, &uuid);
  return uuid_str;
}
