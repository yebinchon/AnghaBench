
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int * svn_mergeinfo_t ;
struct TYPE_9__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 scalar_t__ SVN_ERR_MERGEINFO_PARSE_ERROR ;
 TYPE_1__* SVN_NO_ERROR ;
 int TRUE ;
 int elide_mergeinfo (int *,int *,char const*,int *,int *) ;
 scalar_t__ strcmp (char const*,char const*) ;
 TYPE_1__* svn_client__get_wc_mergeinfo (int **,int *,int ,char const*,char const*,int *,int ,int *,int *,int *) ;
 TYPE_1__* svn_client__get_wc_or_repos_mergeinfo (int **,int *,int *,int ,int ,int *,char const*,int *,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 int svn_mergeinfo_explicit ;
 int svn_mergeinfo_nearest_ancestor ;

svn_error_t *
svn_client__elide_mergeinfo(const char *target_abspath,
                            const char *wc_elision_limit_abspath,
                            svn_client_ctx_t *ctx,
                            apr_pool_t *pool)
{
  const char *limit_abspath = wc_elision_limit_abspath;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(target_abspath));
  SVN_ERR_ASSERT(!wc_elision_limit_abspath || svn_dirent_is_absolute(wc_elision_limit_abspath));


  if (!limit_abspath
      || strcmp(target_abspath, limit_abspath) != 0)
    {
      svn_mergeinfo_t target_mergeinfo;
      svn_mergeinfo_t mergeinfo = ((void*)0);
      svn_error_t *err;


      err = svn_client__get_wc_mergeinfo(&target_mergeinfo, ((void*)0),
                                         svn_mergeinfo_explicit,
                                         target_abspath,
                                         ((void*)0), ((void*)0), FALSE,
                                         ctx, pool, pool);
      if (err)
        {
          if (err->apr_err == SVN_ERR_MERGEINFO_PARSE_ERROR)
            {



              svn_error_clear(err);
              return SVN_NO_ERROR;
            }
          else
            {
              return svn_error_trace(err);
            }
        }



      if (target_mergeinfo == ((void*)0))
        return SVN_NO_ERROR;


      err = svn_client__get_wc_mergeinfo(&mergeinfo, ((void*)0),
                                         svn_mergeinfo_nearest_ancestor,
                                         target_abspath,
                                         limit_abspath,
                                         ((void*)0), FALSE, ctx, pool, pool);
      if (err)
        {
          if (err->apr_err == SVN_ERR_MERGEINFO_PARSE_ERROR)
            {

              svn_error_clear(err);
              return SVN_NO_ERROR;
            }
          else
            {
              return svn_error_trace(err);
            }
        }




      if (!mergeinfo && !wc_elision_limit_abspath)
        {
          err = svn_client__get_wc_or_repos_mergeinfo(
            &mergeinfo, ((void*)0), ((void*)0), TRUE,
            svn_mergeinfo_nearest_ancestor,
            ((void*)0), target_abspath, ctx, pool);
          if (err)
            {
              if (err->apr_err == SVN_ERR_MERGEINFO_PARSE_ERROR)
                {


                  svn_error_clear(err);
                  return SVN_NO_ERROR;
                }
              else
                {
                  return svn_error_trace(err);
                }
            }
        }



      if (!mergeinfo && wc_elision_limit_abspath)
        return SVN_NO_ERROR;

      SVN_ERR(elide_mergeinfo(mergeinfo, target_mergeinfo, target_abspath,
                              ctx, pool));
    }
  return SVN_NO_ERROR;
}
