
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int apr_pool_t ;


 int * svn_error_trace (int ) ;
 int svn_wc__db_pristine_get_md5 (int const**,int ,char const*,int const*,int *,int *) ;

svn_error_t *
svn_wc__node_get_md5_from_sha1(const svn_checksum_t **md5_checksum,
                               svn_wc_context_t *wc_ctx,
                               const char *wri_abspath,
                               const svn_checksum_t *sha1_checksum,
                               apr_pool_t *result_pool,
                               apr_pool_t *scratch_pool)
{
  return svn_error_trace(svn_wc__db_pristine_get_md5(md5_checksum,
                                                     wc_ctx->db,
                                                     wri_abspath,
                                                     sha1_checksum,
                                                     result_pool,
                                                     scratch_pool));
}
