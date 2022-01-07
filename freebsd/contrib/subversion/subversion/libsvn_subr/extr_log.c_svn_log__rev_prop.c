
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int apr_pool_t ;


 char const* apr_psprintf (int *,char*,int ,int ) ;
 int svn_path_uri_encode (char const*,int *) ;

const char *
svn_log__rev_prop(svn_revnum_t rev, const char *name, apr_pool_t *pool)
{
  return apr_psprintf(pool, "rev-prop r%ld %s", rev,
                      svn_path_uri_encode(name, pool));
}
