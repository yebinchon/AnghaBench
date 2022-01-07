
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_depth_t ;
typedef int apr_pool_t ;


 char const* apr_psprintf (int *,char*,int ,int ,int ,int ) ;
 int log_depth (int ,int *) ;
 int svn_path_uri_encode (char const*,int *) ;

const char *
svn_log__switch(const char *path, const char *dst_path, svn_revnum_t revnum,
                svn_depth_t depth, apr_pool_t *pool)
{
  return apr_psprintf(pool, "switch %s %s@%ld%s",
                      svn_path_uri_encode(path, pool),
                      svn_path_uri_encode(dst_path, pool), revnum,
                      log_depth(depth, pool));
}
