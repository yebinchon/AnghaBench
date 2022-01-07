
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
struct TYPE_18__ {scalar_t__ rev; } ;
typedef TYPE_4__ svn_client__pathrev_t ;
typedef int svn_boolean_t ;
struct TYPE_16__ {int has_r0_history; int history; TYPE_6__* tip; } ;
struct TYPE_15__ {int has_r0_history; int history; TYPE_6__* tip; } ;
struct TYPE_19__ {TYPE_3__* target; TYPE_6__* source; int yca; TYPE_2__ target_branch; TYPE_1__ source_branch; int target_ra_session; int source_ra_session; } ;
typedef TYPE_5__ source_and_target_t ;
typedef int apr_pool_t ;
struct TYPE_20__ {int rev; int url; } ;
struct TYPE_17__ {TYPE_6__ loc; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_CLIENT_NOT_READY_TO_MERGE ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int find_base_on_source (TYPE_4__**,TYPE_5__*,int *,int *,int *) ;
 int find_base_on_target (TYPE_4__**,TYPE_5__*,int *,int *,int *) ;
 int svn_client__calc_youngest_common_ancestor (int *,TYPE_6__*,int ,int ,TYPE_6__*,int ,int ,int *,int *) ;
 int svn_client__get_history_as_mergeinfo (int *,int *,TYPE_6__*,int ,int ,int ,int *,int *) ;
 int * svn_error_createf (int ,int *,int ,int ,int ,int ,int ) ;

__attribute__((used)) static svn_error_t *
find_automatic_merge(svn_client__pathrev_t **base_p,
                     svn_boolean_t *is_reintegrate_like,
                     source_and_target_t *s_t,
                     svn_client_ctx_t *ctx,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  svn_client__pathrev_t *base_on_source, *base_on_target;


  s_t->source_branch.tip = s_t->source;
  SVN_ERR(svn_client__get_history_as_mergeinfo(
            &s_t->source_branch.history, &s_t->source_branch.has_r0_history,
            s_t->source, SVN_INVALID_REVNUM, SVN_INVALID_REVNUM,
            s_t->source_ra_session, ctx, scratch_pool));
  s_t->target_branch.tip = &s_t->target->loc;
  SVN_ERR(svn_client__get_history_as_mergeinfo(
            &s_t->target_branch.history, &s_t->target_branch.has_r0_history,
            &s_t->target->loc, SVN_INVALID_REVNUM, SVN_INVALID_REVNUM,
            s_t->target_ra_session, ctx, scratch_pool));

  SVN_ERR(svn_client__calc_youngest_common_ancestor(
            &s_t->yca, s_t->source, s_t->source_branch.history,
            s_t->source_branch.has_r0_history,
            &s_t->target->loc, s_t->target_branch.history,
            s_t->target_branch.has_r0_history,
            result_pool, scratch_pool));

  if (! s_t->yca)
    return svn_error_createf(SVN_ERR_CLIENT_NOT_READY_TO_MERGE, ((void*)0),
                             _("'%s@%ld' must be ancestrally related to "
                               "'%s@%ld'"),
                             s_t->source->url, s_t->source->rev,
                             s_t->target->loc.url, s_t->target->loc.rev);







  SVN_ERR(find_base_on_source(&base_on_source, s_t,
                              ctx, scratch_pool, scratch_pool));
  SVN_ERR(find_base_on_target(&base_on_target, s_t,
                              ctx, scratch_pool, scratch_pool));


  if (base_on_source->rev >= base_on_target->rev)
    {
      *base_p = base_on_source;
      *is_reintegrate_like = FALSE;
    }
  else
    {
      *base_p = base_on_target;
      *is_reintegrate_like = TRUE;
    }

  return SVN_NO_ERROR;
}
