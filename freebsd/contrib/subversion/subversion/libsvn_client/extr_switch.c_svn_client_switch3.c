
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_client_ctx_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR_ILLEGAL_TARGET ;
 int _ (char*) ;
 int * svn_client__switch_internal (int *,char const*,char const*,int const*,int const*,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__*,int *,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int * svn_error_trace (int *) ;
 int svn_io_sleep_for_timestamps (char const*,int *) ;
 scalar_t__ svn_path_is_url (char const*) ;

svn_error_t *
svn_client_switch3(svn_revnum_t *result_rev,
                   const char *path,
                   const char *switch_url,
                   const svn_opt_revision_t *peg_revision,
                   const svn_opt_revision_t *revision,
                   svn_depth_t depth,
                   svn_boolean_t depth_is_sticky,
                   svn_boolean_t ignore_externals,
                   svn_boolean_t allow_unver_obstructions,
                   svn_boolean_t ignore_ancestry,
                   svn_client_ctx_t *ctx,
                   apr_pool_t *pool)
{
  svn_error_t *err;
  svn_boolean_t sleep_here = FALSE;

  if (svn_path_is_url(path))
    return svn_error_createf(SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                             _("'%s' is not a local path"), path);

  err = svn_client__switch_internal(result_rev, path, switch_url,
                                    peg_revision, revision, depth,
                                    depth_is_sticky, ignore_externals,
                                    allow_unver_obstructions,
                                    ignore_ancestry, &sleep_here, ctx, pool);



  if (sleep_here)
    svn_io_sleep_for_timestamps(path, pool);

  return svn_error_trace(err);
}
