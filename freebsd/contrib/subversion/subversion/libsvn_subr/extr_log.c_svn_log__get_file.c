
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 char const* apr_psprintf (int *,char*,int ,int ,char*,char*) ;
 int svn_path_uri_encode (char const*,int *) ;

const char *
svn_log__get_file(const char *path, svn_revnum_t rev,
                  svn_boolean_t want_contents, svn_boolean_t want_props,
                  apr_pool_t *pool)
{
  return apr_psprintf(pool, "get-file %s r%ld%s%s",
                      svn_path_uri_encode(path, pool), rev,
                      want_contents ? " text" : "",
                      want_props ? " props" : "");
}
