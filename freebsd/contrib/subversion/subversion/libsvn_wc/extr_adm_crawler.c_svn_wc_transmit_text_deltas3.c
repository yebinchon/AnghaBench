
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_checksum_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int * svn_wc__internal_transmit_text_deltas (int *,int const**,int const**,int ,char const*,int ,int const*,void*,int *,int *) ;

svn_error_t *
svn_wc_transmit_text_deltas3(const svn_checksum_t **new_text_base_md5_checksum,
                             const svn_checksum_t **new_text_base_sha1_checksum,
                             svn_wc_context_t *wc_ctx,
                             const char *local_abspath,
                             svn_boolean_t fulltext,
                             const svn_delta_editor_t *editor,
                             void *file_baton,
                             apr_pool_t *result_pool,
                             apr_pool_t *scratch_pool)
{
  return svn_wc__internal_transmit_text_deltas(((void*)0),
                                               new_text_base_md5_checksum,
                                               new_text_base_sha1_checksum,
                                               wc_ctx->db, local_abspath,
                                               fulltext, editor,
                                               file_baton, result_pool,
                                               scratch_pool);
}
