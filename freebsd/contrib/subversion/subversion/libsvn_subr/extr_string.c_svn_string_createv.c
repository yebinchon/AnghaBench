
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int svn_string_t ;
typedef int apr_pool_t ;


 char* apr_pvsprintf (int *,char const*,int ) ;
 int * create_string (char*,int ,int *) ;
 int strlen (char*) ;

svn_string_t *
svn_string_createv(apr_pool_t *pool, const char *fmt, va_list ap)
{
  char *data = apr_pvsprintf(pool, fmt, ap);


  return create_string(data, strlen(data), pool);
}
