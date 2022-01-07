
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_opt_revision_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_client__pathrev_t ;
struct TYPE_7__ {int yca; TYPE_1__* target; int * source; int target_ra_session; int source_ra_session; } ;
typedef TYPE_2__ source_and_target_t ;
struct TYPE_8__ {int yca; int * target; int * right; int is_reintegrate_like; int base; } ;
typedef TYPE_3__ automatic_merge_t ;
typedef int apr_pool_t ;
struct TYPE_6__ {int loc; int * abspath; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 void* apr_palloc (int *,int) ;
 int find_automatic_merge (int *,int *,TYPE_2__*,int *,int *,int *) ;
 int svn_client__ra_session_from_path2 (int *,int **,char const*,int *,int const*,int const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
find_automatic_merge_no_wc(automatic_merge_t **merge_p,
                           const char *source_path_or_url,
                           const svn_opt_revision_t *source_revision,
                           const char *target_path_or_url,
                           const svn_opt_revision_t *target_revision,
                           svn_client_ctx_t *ctx,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  source_and_target_t *s_t = apr_palloc(scratch_pool, sizeof(*s_t));
  svn_client__pathrev_t *target_loc;
  automatic_merge_t *merge = apr_palloc(result_pool, sizeof(*merge));


  SVN_ERR(svn_client__ra_session_from_path2(
            &s_t->source_ra_session, &s_t->source,
            source_path_or_url, ((void*)0), source_revision, source_revision,
            ctx, result_pool));


  SVN_ERR(svn_client__ra_session_from_path2(
            &s_t->target_ra_session, &target_loc,
            target_path_or_url, ((void*)0), target_revision, target_revision,
            ctx, result_pool));
  s_t->target = apr_palloc(scratch_pool, sizeof(*s_t->target));
  s_t->target->abspath = ((void*)0);
  s_t->target->loc = *target_loc;

  SVN_ERR(find_automatic_merge(&merge->base, &merge->is_reintegrate_like, s_t,
                               ctx, result_pool, scratch_pool));

  merge->right = s_t->source;
  merge->target = &s_t->target->loc;
  merge->yca = s_t->yca;
  *merge_p = merge;

  return SVN_NO_ERROR;
}
