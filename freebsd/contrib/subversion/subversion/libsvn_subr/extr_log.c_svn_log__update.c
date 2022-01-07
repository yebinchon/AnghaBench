
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_depth_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 char const* apr_psprintf (int *,char*,int ,int ,int ,char*) ;
 int log_depth (int ,int *) ;
 int svn_path_uri_encode (char const*,int *) ;

const char *
svn_log__update(const char *path, svn_revnum_t rev, svn_depth_t depth,
                svn_boolean_t send_copyfrom_args,
                apr_pool_t *pool)
{
  return apr_psprintf(pool, "update %s r%ld%s%s",
                      svn_path_uri_encode(path, pool), rev,
                      log_depth(depth, pool),
                      (send_copyfrom_args
                       ? " send-copyfrom-args"
                       : ""));
}
