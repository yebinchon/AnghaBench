
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int apr_pool_t ;


 char const* apr_psprintf (int *,char*,char const*,int ) ;
 char* svn_path_uri_encode (char const*,int *) ;

const char *
svn_log__get_inherited_props(const char *path,
                             svn_revnum_t rev,
                             apr_pool_t *pool)
{
  const char *log_path;

  if (path && path[0] != '\0')
    log_path = svn_path_uri_encode(path, pool);
  else
    log_path = "/";
  return apr_psprintf(pool, "get-inherited-props %s r%ld", log_path, rev);
}
