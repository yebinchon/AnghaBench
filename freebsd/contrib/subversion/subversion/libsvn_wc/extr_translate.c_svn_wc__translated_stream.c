
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;


 int * svn_error_trace (int ) ;
 int svn_wc__internal_translated_stream (int **,int ,char const*,char const*,int ,int *,int *) ;

svn_error_t *
svn_wc__translated_stream(svn_stream_t **stream,
                          svn_wc_context_t *wc_ctx,
                          const char *local_abspath,
                          const char *versioned_abspath,
                          apr_uint32_t flags,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{
  return svn_error_trace(
           svn_wc__internal_translated_stream(stream, wc_ctx->db,
                                              local_abspath,
                                              versioned_abspath,
                                              flags, result_pool,
                                              scratch_pool));
}
