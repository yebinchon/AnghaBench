
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 char const* apr_psprintf (int *,char*,int ,int ,int ,int ) ;
 int log_include_merged_revisions (int ) ;
 int svn_path_uri_encode (char const*,int *) ;

const char *
svn_log__get_file_revs(const char *path, svn_revnum_t start, svn_revnum_t end,
                       svn_boolean_t include_merged_revisions,
                       apr_pool_t *pool)
{
  return apr_psprintf(pool, "get-file-revs %s r%ld:%ld%s",
                      svn_path_uri_encode(path, pool), start, end,
                      log_include_merged_revisions(include_merged_revisions));
}
