
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int svn_txdelta_window_handler_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
struct TYPE_10__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_checksum_t ;
struct edit_baton {int local_abspath; int pool; int wri_abspath; int db; int new_md5_checksum; int new_sha1_checksum; int install_data; TYPE_1__* original_checksum; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int svn_checksum_match (TYPE_1__*,TYPE_1__ const*) ;
 scalar_t__ svn_checksum_md5 ;
 int svn_checksum_mismatch_err (TYPE_1__*,TYPE_1__ const*,int *,int ,int ) ;
 int svn_checksum_parse_hex (TYPE_1__**,scalar_t__,char const*,int *) ;
 int svn_dirent_local_style (int ,int *) ;
 int * svn_error_trace (int ) ;
 int * svn_stream_empty (int *) ;
 int svn_txdelta_apply (int *,int *,int *,int ,int *,int *,void**) ;
 int svn_wc__db_pristine_get_md5 (TYPE_1__ const**,int ,int ,TYPE_1__*,int *,int *) ;
 int svn_wc__db_pristine_prepare_install (int **,int *,int *,int *,int ,int ,int ,int *) ;
 int svn_wc__db_pristine_read (int **,int *,int ,int ,TYPE_1__*,int *,int *) ;

__attribute__((used)) static svn_error_t *
apply_textdelta(void *file_baton,
                const char *base_checksum_digest,
                apr_pool_t *pool,
                svn_txdelta_window_handler_t *handler,
                void **handler_baton)
{
  struct edit_baton *eb = file_baton;
  svn_stream_t *src_stream;
  svn_stream_t *dest_stream;

  if (eb->original_checksum)
    {
      if (base_checksum_digest)
        {
          svn_checksum_t *expected_checksum;
          const svn_checksum_t *original_md5;

          SVN_ERR(svn_checksum_parse_hex(&expected_checksum, svn_checksum_md5,
                                         base_checksum_digest, pool));

          if (eb->original_checksum->kind != svn_checksum_md5)
            SVN_ERR(svn_wc__db_pristine_get_md5(&original_md5,
                                                eb->db, eb->wri_abspath,
                                                eb->original_checksum,
                                                pool, pool));
          else
            original_md5 = eb->original_checksum;

          if (!svn_checksum_match(expected_checksum, original_md5))
            return svn_error_trace(svn_checksum_mismatch_err(
                                    expected_checksum,
                                    original_md5,
                                    pool,
                                    _("Base checksum mismatch for '%s'"),
                                    svn_dirent_local_style(eb->local_abspath,
                                                           pool)));
        }

      SVN_ERR(svn_wc__db_pristine_read(&src_stream, ((void*)0), eb->db,
                                       eb->wri_abspath, eb->original_checksum,
                                       pool, pool));
    }
  else
    src_stream = svn_stream_empty(pool);

  SVN_ERR(svn_wc__db_pristine_prepare_install(&dest_stream,
                                              &eb->install_data,
                                              &eb->new_sha1_checksum,
                                              &eb->new_md5_checksum,
                                              eb->db, eb->wri_abspath,
                                              eb->pool, pool));

  svn_txdelta_apply(src_stream, dest_stream, ((void*)0), eb->local_abspath, pool,
                    handler, handler_baton);

  return SVN_NO_ERROR;
}
