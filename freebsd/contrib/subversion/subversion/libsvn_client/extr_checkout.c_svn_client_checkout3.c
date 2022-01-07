
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
 int SVN_ERR (int ) ;
 int * svn_client__checkout_internal (int *,scalar_t__*,char const*,char const*,int const*,int const*,int ,scalar_t__,scalar_t__,int *,int *,int *) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 int * svn_error_trace (int *) ;
 int svn_io_sleep_for_timestamps (char const*,int *) ;

svn_error_t *
svn_client_checkout3(svn_revnum_t *result_rev,
                     const char *URL,
                     const char *path,
                     const svn_opt_revision_t *peg_revision,
                     const svn_opt_revision_t *revision,
                     svn_depth_t depth,
                     svn_boolean_t ignore_externals,
                     svn_boolean_t allow_unver_obstructions,
                     svn_client_ctx_t *ctx,
                     apr_pool_t *pool)
{
  const char *local_abspath;
  svn_error_t *err;
  svn_boolean_t sleep_here = FALSE;

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, pool));

  err = svn_client__checkout_internal(result_rev, &sleep_here,
                                      URL, local_abspath,
                                      peg_revision, revision, depth,
                                      ignore_externals,
                                      allow_unver_obstructions,
                                      ((void*)0) ,
                                      ctx, pool);
  if (sleep_here)
    svn_io_sleep_for_timestamps(local_abspath, pool);

  return svn_error_trace(err);
}
