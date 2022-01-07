
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_txdelta_window_handler_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
struct file_baton {int apply_baton; int apply_handler; int * pool; int path; int result_digest; int start_md5_checksum; int * path_start_revision; TYPE_1__* edit_baton; int added; int * path_end_revision; scalar_t__ skip; } ;
typedef int apr_pool_t ;
struct TYPE_2__ {int text_deltas; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int get_empty_file (TYPE_1__*,int **) ;
 int get_file_from_ra (struct file_baton*,int ,int *) ;
 int lazy_open_result ;
 int lazy_open_source ;
 int svn_checksum_match (int *,int ) ;
 int svn_checksum_md5 ;
 int svn_checksum_mismatch_err (int *,int ,int *,int ,int ) ;
 int svn_checksum_parse_hex (int **,int ,char const*,int *) ;
 int svn_delta_noop_window_handler ;
 int * svn_error_trace (int ) ;
 int * svn_stream_lazyopen_create (int ,struct file_baton*,int ,int *) ;
 int svn_txdelta_apply (int *,int *,int ,int ,int *,int *,int *) ;
 int window_handler ;

__attribute__((used)) static svn_error_t *
apply_textdelta(void *file_baton,
                const char *base_md5_digest,
                apr_pool_t *pool,
                svn_txdelta_window_handler_t *handler,
                void **handler_baton)
{
  struct file_baton *fb = file_baton;
  svn_stream_t *src_stream;
  svn_stream_t *result_stream;
  apr_pool_t *scratch_pool = fb->pool;


  if (fb->skip)
    {
      *handler = svn_delta_noop_window_handler;
      *handler_baton = ((void*)0);
      return SVN_NO_ERROR;
    }


  if (! fb->edit_baton->text_deltas)
    {

      SVN_ERR(get_empty_file(fb->edit_baton, &fb->path_start_revision));
      SVN_ERR(get_empty_file(fb->edit_baton, &fb->path_end_revision));

      *handler = svn_delta_noop_window_handler;
      *handler_baton = ((void*)0);

      return SVN_NO_ERROR;
    }


  if (!fb->added)
    SVN_ERR(get_file_from_ra(fb, FALSE, scratch_pool));
  else
    SVN_ERR(get_empty_file(fb->edit_baton, &(fb->path_start_revision)));

  SVN_ERR_ASSERT(fb->path_start_revision != ((void*)0));

  if (base_md5_digest != ((void*)0))
    {
      svn_checksum_t *base_md5_checksum;

      SVN_ERR(svn_checksum_parse_hex(&base_md5_checksum, svn_checksum_md5,
                                     base_md5_digest, scratch_pool));

      if (!svn_checksum_match(base_md5_checksum, fb->start_md5_checksum))
        return svn_error_trace(svn_checksum_mismatch_err(
                                      base_md5_checksum,
                                      fb->start_md5_checksum,
                                      scratch_pool,
                                      _("Base checksum mismatch for '%s'"),
                                      fb->path));
    }


  src_stream = svn_stream_lazyopen_create(lazy_open_source, fb, TRUE,
                                          scratch_pool);



  result_stream = svn_stream_lazyopen_create(lazy_open_result, fb, TRUE,
                                             scratch_pool);

  svn_txdelta_apply(src_stream,
                    result_stream,
                    fb->result_digest,
                    fb->path, fb->pool,
                    &(fb->apply_handler), &(fb->apply_baton));

  *handler = window_handler;
  *handler_baton = file_baton;

  return SVN_NO_ERROR;
}
