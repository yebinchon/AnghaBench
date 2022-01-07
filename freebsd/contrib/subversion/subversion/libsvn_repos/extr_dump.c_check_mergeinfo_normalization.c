
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_repos_notify_func_t ;
typedef int * svn_mergeinfo_t ;
typedef int svn_error_t ;
struct verify_mergeinfo_normalization_baton {char const* path; void* notify_baton; int notify_func; int buffer; int * normalized_paths; int * paths; int * result; int normalize; } ;
struct filter_mergeinfo_paths_baton {char const* path; void* notify_baton; int notify_func; int buffer; int * normalized_paths; int * paths; int * result; int normalize; } ;
struct extract_mergeinfo_paths_baton {char const* path; void* notify_baton; int notify_func; int buffer; int * normalized_paths; int * paths; int * result; int normalize; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 void* apr_hash_make (int *) ;
 int extract_mergeinfo_paths ;
 int filter_mergeinfo_paths ;
 int svn_iter_apr_hash (int *,int *,int ,struct verify_mergeinfo_normalization_baton*,int *) ;
 int svn_membuf__create (int *,int ,int *) ;
 int svn_mergeinfo_parse (int **,char const*,int *) ;
 int verify_mergeinfo_normalization ;

__attribute__((used)) static svn_error_t *
check_mergeinfo_normalization(const char *path,
                              const char *new_mergeinfo,
                              const char *old_mergeinfo,
                              svn_repos_notify_func_t notify_func,
                              void *notify_baton,
                              apr_pool_t *pool)
{
  svn_mergeinfo_t mergeinfo;
  apr_hash_t *normalized_paths;
  apr_hash_t *added_paths;
  struct extract_mergeinfo_paths_baton extract_baton;
  struct verify_mergeinfo_normalization_baton verify_baton;

  SVN_ERR(svn_mergeinfo_parse(&mergeinfo, new_mergeinfo, pool));

  extract_baton.result = apr_hash_make(pool);
  extract_baton.normalize = FALSE;
  svn_membuf__create(&extract_baton.buffer, 0, pool);
  SVN_ERR(svn_iter_apr_hash(((void*)0), mergeinfo,
                            extract_mergeinfo_paths,
                            &extract_baton, pool));
  added_paths = extract_baton.result;

  if (old_mergeinfo)
    {
      struct filter_mergeinfo_paths_baton filter_baton;
      svn_mergeinfo_t oldinfo;

      extract_baton.result = apr_hash_make(pool);
      extract_baton.normalize = TRUE;
      SVN_ERR(svn_mergeinfo_parse(&oldinfo, old_mergeinfo, pool));
      SVN_ERR(svn_iter_apr_hash(((void*)0), oldinfo,
                                extract_mergeinfo_paths,
                                &extract_baton, pool));
      normalized_paths = extract_baton.result;

      filter_baton.paths = added_paths;
      SVN_ERR(svn_iter_apr_hash(((void*)0), oldinfo,
                                filter_mergeinfo_paths,
                                &filter_baton, pool));
    }
  else
      normalized_paths = apr_hash_make(pool);

  verify_baton.path = path;
  verify_baton.normalized_paths = normalized_paths;
  verify_baton.buffer = extract_baton.buffer;
  verify_baton.notify_func = notify_func;
  verify_baton.notify_baton = notify_baton;
  SVN_ERR(svn_iter_apr_hash(((void*)0), added_paths,
                            verify_mergeinfo_normalization,
                            &verify_baton, pool));

  return SVN_NO_ERROR;
}
