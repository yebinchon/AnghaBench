
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
typedef int svn_client__pathrev_t ;
struct TYPE_4__ {int tip; } ;
struct TYPE_5__ {int source_ra_session; TYPE_1__ target_branch; int source_branch; int yca; } ;
typedef TYPE_2__ source_and_target_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int find_last_merged_location (int **,int ,int *,int ,int *,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
find_base_on_source(svn_client__pathrev_t **base_p,
                    source_and_target_t *s_t,
                    svn_client_ctx_t *ctx,
                    apr_pool_t *result_pool,
                    apr_pool_t *scratch_pool)
{
  SVN_ERR(find_last_merged_location(base_p,
                                    s_t->yca,
                                    &s_t->source_branch,
                                    s_t->target_branch.tip,
                                    ctx,
                                    s_t->source_ra_session,
                                    result_pool, scratch_pool));
  return SVN_NO_ERROR;
}
