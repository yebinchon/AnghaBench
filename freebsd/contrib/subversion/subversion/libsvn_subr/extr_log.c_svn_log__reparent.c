
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 char const* apr_psprintf (int *,char*,int ) ;
 int svn_path_uri_encode (char const*,int *) ;

const char *
svn_log__reparent(const char *path, apr_pool_t *pool)
{
  return apr_psprintf(pool, "reparent %s", svn_path_uri_encode(path, pool));

}
