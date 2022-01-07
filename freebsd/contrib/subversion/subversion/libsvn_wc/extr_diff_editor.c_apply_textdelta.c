
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_txdelta_window_handler_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
struct file_baton_t {int pool; int local_abspath; int result_digest; int temp_file_path; scalar_t__ base_checksum; scalar_t__ skip; struct edit_baton_t* eb; } ;
struct edit_baton_t {int db; int anchor_abspath; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int svn_checksum_match (int *,int const*) ;
 int svn_checksum_md5 ;
 int * svn_checksum_mismatch_err (int const*,int *,int *,int ,int ) ;
 int svn_checksum_parse_hex (int **,int ,char const*,int *) ;
 int svn_delta_noop_window_handler ;
 int svn_dirent_local_style (int ,int *) ;
 int svn_io_file_del_on_pool_cleanup ;
 int * svn_stream_empty (int *) ;
 int svn_stream_open_unique (int **,int *,int *,int ,int ,int ) ;
 int svn_txdelta_apply (int *,int *,int ,int ,int ,int *,void**) ;
 int svn_wc__db_pristine_get_md5 (int const**,int ,int ,scalar_t__,int *,int *) ;
 int svn_wc__db_pristine_read (int **,int *,int ,int ,scalar_t__,int *,int *) ;

__attribute__((used)) static svn_error_t *
apply_textdelta(void *file_baton,
                const char *base_checksum_hex,
                apr_pool_t *pool,
                svn_txdelta_window_handler_t *handler,
                void **handler_baton)
{
  struct file_baton_t *fb = file_baton;
  struct edit_baton_t *eb = fb->eb;
  svn_stream_t *source;
  svn_stream_t *temp_stream;
  svn_checksum_t *repos_checksum = ((void*)0);

  if (fb->skip)
    {
      *handler = svn_delta_noop_window_handler;
      *handler_baton = ((void*)0);
      return SVN_NO_ERROR;
    }

  if (base_checksum_hex && fb->base_checksum)
    {
      const svn_checksum_t *base_md5;
      SVN_ERR(svn_checksum_parse_hex(&repos_checksum, svn_checksum_md5,
                                     base_checksum_hex, pool));

      SVN_ERR(svn_wc__db_pristine_get_md5(&base_md5,
                                          eb->db, eb->anchor_abspath,
                                          fb->base_checksum,
                                          pool, pool));

      if (! svn_checksum_match(repos_checksum, base_md5))
        {
          return svn_checksum_mismatch_err(
                        base_md5,
                        repos_checksum,
                        pool,
                        _("Checksum mismatch for '%s'"),
                        svn_dirent_local_style(fb->local_abspath,
                                               pool));
        }

      SVN_ERR(svn_wc__db_pristine_read(&source, ((void*)0),
                                       eb->db, fb->local_abspath,
                                       fb->base_checksum,
                                       pool, pool));
    }
  else if (fb->base_checksum)
    {
      SVN_ERR(svn_wc__db_pristine_read(&source, ((void*)0),
                                       eb->db, fb->local_abspath,
                                       fb->base_checksum,
                                       pool, pool));
    }
  else
    source = svn_stream_empty(pool);


  SVN_ERR(svn_stream_open_unique(&temp_stream, &fb->temp_file_path, ((void*)0),
                                 svn_io_file_del_on_pool_cleanup,
                                 fb->pool, fb->pool));

  svn_txdelta_apply(source, temp_stream,
                    fb->result_digest,
                    fb->local_abspath ,
                    fb->pool,
                    handler, handler_baton);

  return SVN_NO_ERROR;
}
