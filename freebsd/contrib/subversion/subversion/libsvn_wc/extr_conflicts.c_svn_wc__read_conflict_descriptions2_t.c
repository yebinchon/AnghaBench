
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int * svn_wc__read_conflicts (int const**,int *,int ,char const*,int ,int ,int *,int *) ;

svn_error_t *
svn_wc__read_conflict_descriptions2_t(const apr_array_header_t **conflicts,
                                      svn_wc_context_t *wc_ctx,
                                      const char *local_abspath,
                                      apr_pool_t *result_pool,
                                      apr_pool_t *scratch_pool)
{
  return svn_wc__read_conflicts(conflicts, ((void*)0), wc_ctx->db, local_abspath,
                                FALSE, FALSE, result_pool, scratch_pool);
}
