
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_depth_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 char const* apr_psprintf (int *,char*,int ,int ,int ,int ,char const*,...) ;
 int log_depth (int ,int *) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int svn_path_uri_encode (char const*,int *) ;

const char *
svn_log__diff(const char *path, svn_revnum_t from_revnum,
              const char *dst_path, svn_revnum_t revnum,
              svn_depth_t depth, svn_boolean_t ignore_ancestry,
              apr_pool_t *pool)
{
  const char *log_ignore_ancestry = (ignore_ancestry
                                     ? " ignore-ancestry"
                                     : "");
  if (strcmp(path, dst_path) == 0)
    return apr_psprintf(pool, "diff %s r%ld:%ld%s%s",
                        svn_path_uri_encode(path, pool), from_revnum, revnum,
                        log_depth(depth, pool), log_ignore_ancestry);
  return apr_psprintf(pool, "diff %s@%ld %s@%ld%s%s",
                      svn_path_uri_encode(path, pool), from_revnum,
                      svn_path_uri_encode(dst_path, pool), revnum,
                      log_depth(depth, pool), log_ignore_ancestry);
}
