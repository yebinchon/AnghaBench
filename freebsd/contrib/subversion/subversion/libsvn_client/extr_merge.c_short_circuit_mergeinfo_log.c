
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_ra_session_t ;
typedef int svn_opt_revision_t ;
typedef int svn_mergeinfo_catalog_t ;
typedef int svn_log_entry_receiver_t ;
struct TYPE_10__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_CEASE_INVOCATION ;
 scalar_t__ SVN_IS_VALID_REVNUM (int ) ;
 TYPE_1__* SVN_NO_ERROR ;
 int TRUE ;
 int * apr_array_make (int *,int ,int) ;
 TYPE_1__* svn_client__mergeinfo_log (int ,char const*,int const*,int *,char const*,int const*,int const*,int const*,int ,int *,int ,int ,int *,int *,int *,int *,int *) ;
 int svn_depth_infinity ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_compose_create (TYPE_1__*,int ) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 int svn_ra_get_session_url (int *,char const**,int *) ;
 int svn_ra_reparent (int *,char const*,int *) ;

__attribute__((used)) static svn_error_t*
short_circuit_mergeinfo_log(svn_mergeinfo_catalog_t *target_mergeinfo_cat,
                            svn_boolean_t finding_merged,
                            const char *target_path_or_url,
                            const svn_opt_revision_t *target_peg_revision,
                            const char *source_path_or_url,
                            const svn_opt_revision_t *source_peg_revision,
                            const svn_opt_revision_t *source_start_revision,
                            const svn_opt_revision_t *source_end_revision,
                            svn_log_entry_receiver_t receiver,
                            svn_revnum_t *revision,
                            svn_client_ctx_t *ctx,
                            svn_ra_session_t *ra_session,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  apr_array_header_t *revprops;
  svn_error_t *err;
  const char *session_url;

  SVN_ERR(svn_ra_get_session_url(ra_session, &session_url, scratch_pool));

  revprops = apr_array_make(scratch_pool, 0, sizeof(const char *));
  err = svn_client__mergeinfo_log(finding_merged,
                                  target_path_or_url,
                                  target_peg_revision,
                                  target_mergeinfo_cat,
                                  source_path_or_url,
                                  source_peg_revision,
                                  source_start_revision,
                                  source_end_revision,
                                  receiver, revision,
                                  TRUE, svn_depth_infinity,
                                  revprops, ctx, ra_session,
                                  result_pool, scratch_pool);

  err = svn_error_compose_create(
                  err,
                  svn_ra_reparent(ra_session, session_url, scratch_pool));

  if (err)
    {




      if (SVN_IS_VALID_REVNUM(*revision)
          && err->apr_err == SVN_ERR_CEASE_INVOCATION)
        {
          svn_error_clear(err);
          err = ((void*)0);
        }
      else
        {
          return svn_error_trace(err);
        }
    }
  return SVN_NO_ERROR;
}
