
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef scalar_t__ apr_time_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 scalar_t__ apr_hash_count (int *) ;
 int apr_psprintf (int *,char*,int ) ;
 char* svn_path_url_add_component2 (char const*,char const*,int *) ;
 int svn_subst_build_keywords3 (int **,char const*,int ,char const*,char const*,scalar_t__,char const*,int *) ;
 int svn_wc__db_read_info (int *,int *,int *,char const**,char const**,int *,int *,scalar_t__*,char const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,char const*,int *,int *) ;
 int svn_wc__db_read_repos_info (int *,char const**,char const**,int *,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__expand_keywords(apr_hash_t **keywords,
                        svn_wc__db_t *db,
                        const char *local_abspath,
                        const char *wri_abspath,
                        const char *keyword_list,
                        svn_boolean_t for_normalization,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  svn_revnum_t changed_rev;
  apr_time_t changed_date;
  const char *changed_author;
  const char *url;
  const char *repos_root_url;

  if (! for_normalization)
    {
      const char *repos_relpath;

      SVN_ERR(svn_wc__db_read_info(((void*)0), ((void*)0), ((void*)0), &repos_relpath,
                                   &repos_root_url, ((void*)0), &changed_rev,
                                   &changed_date, &changed_author, ((void*)0),
                                   ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                   ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                   ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                   db, local_abspath,
                                   scratch_pool, scratch_pool));


      if (!repos_relpath)
         SVN_ERR(svn_wc__db_read_repos_info(((void*)0), &repos_relpath,
                                            &repos_root_url, ((void*)0),
                                            db, local_abspath,
                                            scratch_pool, scratch_pool));

      url = svn_path_url_add_component2(repos_root_url, repos_relpath,
                                        scratch_pool);
    }
  else
    {
      url = "";
      changed_rev = SVN_INVALID_REVNUM;
      changed_date = 0;
      changed_author = "";
      repos_root_url = "";
    }

  SVN_ERR(svn_subst_build_keywords3(keywords, keyword_list,
                                    apr_psprintf(scratch_pool, "%ld",
                                                 changed_rev),
                                    url, repos_root_url,
                                    changed_date, changed_author,
                                    result_pool));

  if (apr_hash_count(*keywords) == 0)
    *keywords = ((void*)0);

  return SVN_NO_ERROR;
}
