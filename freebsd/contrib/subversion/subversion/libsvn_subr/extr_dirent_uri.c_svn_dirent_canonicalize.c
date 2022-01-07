
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char* apr_pcalloc (int *,int) ;
 char* canonicalize (int ,char const*,int *) ;
 char canonicalize_to_upper (char const) ;
 int type_dirent ;

const char *
svn_dirent_canonicalize(const char *dirent, apr_pool_t *pool)
{
  const char *dst = canonicalize(type_dirent, dirent, pool);
  return dst;
}
