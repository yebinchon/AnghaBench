
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_txdelta_window_t ;
typedef int svn_error_t ;
struct handler_baton {int pool; scalar_t__ install_data; int new_text_base_sha1_checksum; int new_text_base_md5_digest; TYPE_1__* actual_source_checksum; TYPE_1__* expected_source_checksum; int source_checksum_stream; int apply_baton; int * (* apply_handler ) (int *,int ) ;struct file_baton* fb; } ;
struct file_baton {int new_text_base_md5_checksum; int new_text_base_sha1_checksum; int pool; int local_abspath; } ;
struct TYPE_4__ {scalar_t__ kind; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_WC_CORRUPT_TEXT_BASE ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * stub1 (int *,int ) ;
 int svn_checksum__from_digest_md5 (int ,int ) ;
 int svn_checksum_dup (int ,int ) ;
 int svn_checksum_match (TYPE_1__*,TYPE_1__*) ;
 int svn_checksum_to_cstring (TYPE_1__*,int ) ;
 int svn_dirent_local_style (int ,int ) ;
 int svn_error_clear (int ) ;
 int * svn_error_compose_create (int *,int *) ;
 int * svn_error_createf (int ,int *,int ,int ,int ,int ) ;
 int svn_pool_destroy (int ) ;
 int * svn_stream_close (int ) ;
 int svn_wc__db_pristine_install (scalar_t__,int ,int ,int ) ;
 int svn_wc__db_pristine_install_abort (scalar_t__,int ) ;

__attribute__((used)) static svn_error_t *
window_handler(svn_txdelta_window_t *window, void *baton)
{
  struct handler_baton *hb = baton;
  struct file_baton *fb = hb->fb;
  svn_error_t *err;


  err = hb->apply_handler(window, hb->apply_baton);
  if (window != ((void*)0) && !err)
    return SVN_NO_ERROR;

  if (hb->expected_source_checksum)
    {

      svn_error_t *err2 = svn_stream_close(hb->source_checksum_stream);

      if (!err2)
        {
          SVN_ERR_ASSERT(hb->expected_source_checksum->kind ==
                        hb->actual_source_checksum->kind);

          if (!svn_checksum_match(hb->expected_source_checksum,
                                  hb->actual_source_checksum))
            {
              err = svn_error_createf(SVN_ERR_WC_CORRUPT_TEXT_BASE, err,
                        _("Checksum mismatch while updating '%s':\n"
                          "   expected:  %s\n"
                          "     actual:  %s\n"),
                        svn_dirent_local_style(fb->local_abspath, hb->pool),
                        svn_checksum_to_cstring(hb->expected_source_checksum,
                                                hb->pool),
                        svn_checksum_to_cstring(hb->actual_source_checksum,
                                                hb->pool));
            }
        }

      err = svn_error_compose_create(err, err2);
    }

  if (err)
    {


      if (hb->install_data)
        {
          svn_error_clear(svn_wc__db_pristine_install_abort(hb->install_data,
                                                            hb->pool));
        }
    }
  else
    {

      fb->new_text_base_md5_checksum =
        svn_checksum__from_digest_md5(hb->new_text_base_md5_digest, fb->pool);
      fb->new_text_base_sha1_checksum =
        svn_checksum_dup(hb->new_text_base_sha1_checksum, fb->pool);




      SVN_ERR(svn_wc__db_pristine_install(hb->install_data,
                                          fb->new_text_base_sha1_checksum,
                                          fb->new_text_base_md5_checksum,
                                          hb->pool));
    }

  svn_pool_destroy(hb->pool);

  return err;
}
