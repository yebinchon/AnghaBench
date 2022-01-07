
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
struct TYPE_12__ {int repos_relpath; int repos_root_url; int local_abspath; } ;
typedef TYPE_2__ svn_wc__committable_external_info_t ;
struct TYPE_13__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (TYPE_3__*) ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 TYPE_3__* SVN_NO_ERROR ;
 scalar_t__ strcmp (int ,char const*) ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_wc__db_base_get_info (int *,int *,int *,char const**,char const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int ,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
is_external_rolled_out(svn_boolean_t *is_rolled_out,
                       svn_wc_context_t *wc_ctx,
                       svn_wc__committable_external_info_t *xinfo,
                       apr_pool_t *scratch_pool)
{
  const char *repos_relpath;
  const char *repos_root_url;
  svn_error_t *err;

  *is_rolled_out = FALSE;

  err = svn_wc__db_base_get_info(((void*)0), ((void*)0), ((void*)0), &repos_relpath,
                                 &repos_root_url, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                 ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                 wc_ctx->db, xinfo->local_abspath,
                                 scratch_pool, scratch_pool);

  if (err)
    {
      if (err->apr_err == SVN_ERR_WC_PATH_NOT_FOUND)
        {
          svn_error_clear(err);
          return SVN_NO_ERROR;
        }
      SVN_ERR(err);
    }

  *is_rolled_out = (strcmp(xinfo->repos_root_url, repos_root_url) == 0 &&
                    strcmp(xinfo->repos_relpath, repos_relpath) == 0);
  return SVN_NO_ERROR;
}
