
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_client_conflict_t ;
typedef int svn_client_conflict_option_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int add_resolution_option (int *,int *,int ,int ,int ,int ) ;
 int * apr_array_make (int *,int,int) ;
 int assert_prop_conflict (int *,int *) ;
 int resolve_postpone ;
 int resolve_prop_conflict ;
 int svn_client_conflict_option_base_text ;
 int svn_client_conflict_option_incoming_text ;
 int svn_client_conflict_option_incoming_text_where_conflicted ;
 int svn_client_conflict_option_merged_text ;
 int svn_client_conflict_option_postpone ;
 int svn_client_conflict_option_working_text ;
 int svn_client_conflict_option_working_text_where_conflicted ;

svn_error_t *
svn_client_conflict_prop_get_resolution_options(apr_array_header_t **options,
                                                svn_client_conflict_t *conflict,
                                                svn_client_ctx_t *ctx,
                                                apr_pool_t *result_pool,
                                                apr_pool_t *scratch_pool)
{
  SVN_ERR(assert_prop_conflict(conflict, scratch_pool));

  *options = apr_array_make(result_pool, 7,
                            sizeof(svn_client_conflict_option_t *));

  add_resolution_option(*options, conflict,
    svn_client_conflict_option_postpone,
    _("Postpone"),
    _("skip this conflict and leave it unresolved"),
    resolve_postpone);

  add_resolution_option(*options, conflict,
    svn_client_conflict_option_base_text,
    _("Accept base"),
    _("discard local and incoming changes for this property"),
    resolve_prop_conflict);

  add_resolution_option(*options, conflict,
    svn_client_conflict_option_incoming_text,
    _("Accept incoming"),
    _("accept incoming version of entire property value"),
    resolve_prop_conflict);

  add_resolution_option(*options, conflict,
    svn_client_conflict_option_working_text,
    _("Mark as resolved"),
    _("accept working copy version of entire property value"),
    resolve_prop_conflict);

  add_resolution_option(*options, conflict,
    svn_client_conflict_option_incoming_text_where_conflicted,
    _("Accept incoming for conflicts"),
    _("accept incoming changes only where they conflict"),
    resolve_prop_conflict);

  add_resolution_option(*options, conflict,
    svn_client_conflict_option_working_text_where_conflicted,
    _("Reject conflicts"),
    _("reject changes which conflict and accept the rest"),
    resolve_prop_conflict);

  add_resolution_option(*options, conflict,
    svn_client_conflict_option_merged_text,
    _("Accept merged"),
    _("accept merged version of property value"),
    resolve_prop_conflict);

  return SVN_NO_ERROR;
}
