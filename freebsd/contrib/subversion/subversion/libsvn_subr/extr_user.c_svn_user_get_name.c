
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char* get_os_username (int *) ;
 char const* utf8_or_nothing (char const*,int *) ;

const char *
svn_user_get_name(apr_pool_t *pool)
{
  const char *username = get_os_username(pool);
  return utf8_or_nothing(username, pool);
}
