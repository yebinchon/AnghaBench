
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
struct TYPE_12__ {int allow_mixed_rev; int dry_run; int record_only; int force; int ignore_ancestry; int depth; scalar_t__ verbose; scalar_t__ reintegrate; } ;
typedef TYPE_2__ svn_cl__opt_state_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_CL_ARG_PARSING_ERROR ;
 int _ (char*) ;
 int * svn_cl__deprecated_merge_reintegrate (char const*,TYPE_1__*,char const*,int ,int *,int *,int *) ;
 int * svn_client_merge5 (char const*,TYPE_1__*,char const*,TYPE_1__*,char const*,int ,int ,int ,int ,int ,int ,int ,int *,int *,int *) ;
 int * svn_client_merge_peg5 (char const*,int *,TYPE_1__*,char const*,int ,int ,int ,int ,int ,int ,int ,int *,int *,int *) ;
 int svn_cmdline_printf (int *,int ) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 scalar_t__ svn_opt_revision_unspecified ;
 scalar_t__ svn_path_is_url (char const*) ;

__attribute__((used)) static svn_error_t *
run_merge(svn_boolean_t two_sources_specified,
          const char *sourcepath1,
          svn_opt_revision_t peg_revision1,
          const char *sourcepath2,
          const char *targetpath,
          apr_array_header_t *ranges_to_merge,
          svn_opt_revision_t first_range_start,
          svn_opt_revision_t first_range_end,
          svn_cl__opt_state_t *opt_state,
          apr_array_header_t *options,
          svn_client_ctx_t *ctx,
          apr_pool_t *scratch_pool)
{
  svn_error_t *merge_err;

  if (opt_state->reintegrate)
    {
      merge_err = svn_cl__deprecated_merge_reintegrate(
                    sourcepath1, &peg_revision1, targetpath,
                    opt_state->dry_run, options, ctx, scratch_pool);
    }
  else if (! two_sources_specified)
    {



      if ((first_range_start.kind == svn_opt_revision_unspecified)
          && (first_range_end.kind == svn_opt_revision_unspecified))
        {
          ranges_to_merge = ((void*)0);
        }

      if (opt_state->verbose)
        SVN_ERR(svn_cmdline_printf(scratch_pool, _("--- Merging\n")));
      merge_err = svn_client_merge_peg5(sourcepath1,
                                        ranges_to_merge,
                                        &peg_revision1,
                                        targetpath,
                                        opt_state->depth,
                                        opt_state->ignore_ancestry,
                                        opt_state->ignore_ancestry,
                                        opt_state->force,
                                        opt_state->record_only,
                                        opt_state->dry_run,
                                        opt_state->allow_mixed_rev,
                                        options,
                                        ctx,
                                        scratch_pool);
    }
  else
    {
      if (svn_path_is_url(sourcepath1) != svn_path_is_url(sourcepath2))
        return svn_error_create(SVN_ERR_CL_ARG_PARSING_ERROR, ((void*)0),
                                _("Merge sources must both be "
                                  "either paths or URLs"));

      if (svn_path_is_url(targetpath))
        return svn_error_createf(SVN_ERR_CL_ARG_PARSING_ERROR, ((void*)0),
                                 _("Merge target '%s' must be a local path "
                                   "but looks like a URL"), targetpath);

      if (opt_state->verbose)
        SVN_ERR(svn_cmdline_printf(scratch_pool, _("--- Merging\n")));
      merge_err = svn_client_merge5(sourcepath1,
                                    &first_range_start,
                                    sourcepath2,
                                    &first_range_end,
                                    targetpath,
                                    opt_state->depth,
                                    opt_state->ignore_ancestry,
                                    opt_state->ignore_ancestry,
                                    opt_state->force,
                                    opt_state->record_only,
                                    opt_state->dry_run,
                                    opt_state->allow_mixed_rev,
                                    options,
                                    ctx,
                                    scratch_pool);
    }

  return merge_err;
}
