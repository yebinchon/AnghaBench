
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef int svn_ra_session_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_depth_t ;
typedef int svn_client_ctx_t ;
typedef int svn_client__conflict_report_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_17__ {int url; } ;
struct TYPE_19__ {int abspath; TYPE_1__ loc; } ;
typedef TYPE_3__ merge_target_t ;
struct TYPE_20__ {int ancestral; TYPE_7__* loc2; TYPE_2__* loc1; } ;
typedef TYPE_4__ merge_source_t ;
struct TYPE_21__ {TYPE_7__* right; TYPE_10__* yca; scalar_t__ is_reintegrate_like; TYPE_2__* base; scalar_t__ allow_switched_subtrees; scalar_t__ allow_local_mods; scalar_t__ allow_mixed_rev; } ;
typedef TYPE_5__ automatic_merge_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;
struct TYPE_22__ {int rev; int url; } ;
struct TYPE_18__ {int url; } ;
struct TYPE_16__ {int rev; } ;


 scalar_t__ FALSE ;
 int SVN_ERR (int *) ;
 int SVN_ERR_INCORRECT_PARAMS ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int * do_merge (int *,int *,int **,scalar_t__*,int *,TYPE_3__*,int *,int ,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int *,scalar_t__,scalar_t__,scalar_t__,int const*,int *,int *,int *) ;
 int * ensure_ra_session_url (int **,int ,int ,int *,int *) ;
 int * find_reintegrate_merge (TYPE_4__**,int *,int *,TYPE_7__*,int *,TYPE_3__*,int *,int *,int *) ;
 int * merge_cousins_and_supplement_mergeinfo (int **,scalar_t__*,TYPE_3__*,int *,int *,TYPE_4__*,TYPE_10__*,int ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int const*,int *,int *,int *) ;
 int * normalize_merge_sources_internal (int **,TYPE_7__*,int ,int *,int *,int *,int *) ;
 int * open_target_wc (TYPE_3__**,char const*,int,int,int,int *,int *,int *) ;
 scalar_t__ svn_depth_unknown ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_io_sleep_for_timestamps (char const*,int *) ;
 int svn_rangelist__initialize (int ,int ,int ,int *) ;

__attribute__((used)) static svn_error_t *
do_automatic_merge_locked(svn_client__conflict_report_t **conflict_report,
                          const automatic_merge_t *merge,
                          const char *target_abspath,
                          svn_depth_t depth,
                          svn_boolean_t diff_ignore_ancestry,
                          svn_boolean_t force_delete,
                          svn_boolean_t record_only,
                          svn_boolean_t dry_run,
                          const apr_array_header_t *merge_options,
                          svn_client_ctx_t *ctx,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{
  merge_target_t *target;
  svn_boolean_t reintegrate_like = merge->is_reintegrate_like;
  svn_boolean_t use_sleep = FALSE;
  svn_error_t *err;

  SVN_ERR(open_target_wc(&target, target_abspath,
                         merge->allow_mixed_rev && ! reintegrate_like,
                         merge->allow_local_mods && ! reintegrate_like,
                         merge->allow_switched_subtrees && ! reintegrate_like,
                         ctx, scratch_pool, scratch_pool));

  if (reintegrate_like)
    {
      merge_source_t source;
      svn_ra_session_t *base_ra_session = ((void*)0);
      svn_ra_session_t *right_ra_session = ((void*)0);
      svn_ra_session_t *target_ra_session = ((void*)0);

      if (record_only)
        return svn_error_create(SVN_ERR_INCORRECT_PARAMS, ((void*)0),
                                _("The required merge is reintegrate-like, "
                                  "and the record-only option "
                                  "cannot be used with this kind of merge"));

      if (depth != svn_depth_unknown)
        return svn_error_create(SVN_ERR_INCORRECT_PARAMS, ((void*)0),
                                _("The required merge is reintegrate-like, "
                                  "and the depth option "
                                  "cannot be used with this kind of merge"));

      if (force_delete)
        return svn_error_create(SVN_ERR_INCORRECT_PARAMS, ((void*)0),
                                _("The required merge is reintegrate-like, "
                                  "and the force_delete option "
                                  "cannot be used with this kind of merge"));

      SVN_ERR(ensure_ra_session_url(&base_ra_session, merge->base->url,
                                    target->abspath, ctx, scratch_pool));
      SVN_ERR(ensure_ra_session_url(&right_ra_session, merge->right->url,
                                    target->abspath, ctx, scratch_pool));
      SVN_ERR(ensure_ra_session_url(&target_ra_session, target->loc.url,
                                    target->abspath, ctx, scratch_pool));




      {
        merge_source_t *source2;

        SVN_ERR(find_reintegrate_merge(&source2, ((void*)0),
                                       right_ra_session, merge->right,
                                       target_ra_session, target,
                                       ctx, scratch_pool, scratch_pool));
      }

      source.loc1 = merge->base;
      source.loc2 = merge->right;
      source.ancestral = ! merge->is_reintegrate_like;

      err = merge_cousins_and_supplement_mergeinfo(conflict_report,
                                                   &use_sleep,
                                                   target,
                                                   base_ra_session,
                                                   right_ra_session,
                                                   &source, merge->yca,
                                                   TRUE ,
                                                   depth,
                                                   FALSE ,
                                                   force_delete, record_only,
                                                   dry_run,
                                                   merge_options,
                                                   ctx,
                                                   result_pool, scratch_pool);
    }
  else
    {
      apr_array_header_t *merge_sources;
      svn_ra_session_t *ra_session = ((void*)0);



      SVN_ERR(ensure_ra_session_url(&ra_session, merge->right->url,
                                    target->abspath, ctx, scratch_pool));
      SVN_ERR(normalize_merge_sources_internal(
        &merge_sources, merge->right,
        svn_rangelist__initialize(merge->yca->rev, merge->right->rev, TRUE,
                                  scratch_pool),
        ra_session, ctx, scratch_pool, scratch_pool));

      err = do_merge(((void*)0), ((void*)0), conflict_report, &use_sleep,
                     merge_sources, target, ra_session,
                     TRUE , TRUE ,
                     FALSE , diff_ignore_ancestry,
                     force_delete, dry_run,
                     record_only, ((void*)0), FALSE, FALSE, depth, merge_options,
                     ctx, result_pool, scratch_pool);
    }

  if (use_sleep)
    svn_io_sleep_for_timestamps(target_abspath, scratch_pool);

  SVN_ERR(err);

  return SVN_NO_ERROR;
}
