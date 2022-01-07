
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_opt_revision_t ;
struct TYPE_9__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_CLIENT_BAD_REVISION ;
 scalar_t__ SVN_ERR_ENTRY_NOT_FOUND ;
 int SVN_ERR_ILLEGAL_TARGET ;
 scalar_t__ SVN_ERR_RA_CANNOT_CREATE_SESSION ;
 scalar_t__ SVN_ERR_WC_NOT_WORKING_COPY ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 TYPE_1__* SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 TYPE_1__* svn_client_get_repos_root (char const**,int *,char const*,int *,int *,int *) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_createf (int ,int *,int ) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 int svn_opt_parse_path (int *,char const**,char const*,int *) ;
 int svn_path_is_url (char const*) ;

__attribute__((used)) static svn_error_t *
check_root_url_of_target(const char **root_url,
                         const char *target,
                         svn_client_ctx_t *ctx,
                         apr_pool_t *pool)
{
  svn_error_t *err;
  const char *tmp_root_url;
  const char *truepath;
  svn_opt_revision_t opt_rev;

  SVN_ERR(svn_opt_parse_path(&opt_rev, &truepath, target, pool));
  if (!svn_path_is_url(truepath))
    SVN_ERR(svn_dirent_get_absolute(&truepath, truepath, pool));

  err = svn_client_get_repos_root(&tmp_root_url, ((void*)0), truepath,
                                  ctx, pool, pool);

  if (err)
    {
      if ((err->apr_err == SVN_ERR_ENTRY_NOT_FOUND)
          || (err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
          || (err->apr_err == SVN_ERR_WC_NOT_WORKING_COPY)
          || (err->apr_err == SVN_ERR_RA_CANNOT_CREATE_SESSION)
          || (err->apr_err == SVN_ERR_CLIENT_BAD_REVISION))
        {
          svn_error_clear(err);
          return SVN_NO_ERROR;
        }
      else
        return svn_error_trace(err);
     }

   if (*root_url && tmp_root_url)
     {
       if (strcmp(*root_url, tmp_root_url) != 0)
         return svn_error_createf(SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                                  _("All non-relative targets must have "
                                    "the same root URL"));
     }
   else
     *root_url = tmp_root_url;

   return SVN_NO_ERROR;
}
