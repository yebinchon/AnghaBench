
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_wc__db_t ;
typedef int svn_wc__db_install_data_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
struct TYPE_6__ {int (* close_file ) (void*,int ,int *) ;int * (* apply_textdelta_stream ) (TYPE_1__ const*,void*,char const*,int ,TYPE_2__*,int *) ;} ;
typedef TYPE_1__ svn_delta_editor_t ;
typedef int svn_checksum_t ;
typedef int svn_boolean_t ;
struct TYPE_7__ {void* local_stream; void* base_stream; int need_reset; int member_0; } ;
typedef TYPE_2__ open_txdelta_stream_baton_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_W (int *,int ) ;
 int SVN_ERR_WC_CORRUPT_TEXT_BASE ;
 int SVN_WC_TRANSLATE_TO_NF ;
 int TRUE ;
 int _ (char*) ;
 int apr_psprintf (int *,int ,int ) ;
 int * copying_stream (int *,int *,int *) ;
 int open_txdelta_stream ;
 int read_and_checksum_pristine_text (int **,int const**,int **,int *,char const*,int *,int *) ;
 int * stub1 (TYPE_1__ const*,void*,char const*,int ,TYPE_2__*,int *) ;
 int stub2 (void*,int ,int *) ;
 int * svn_checksum_dup (int *,int *) ;
 int svn_checksum_match (int const*,int *) ;
 int svn_checksum_md5 ;
 int * svn_checksum_mismatch_err (int const*,int *,int *,int ,int ) ;
 int svn_checksum_to_cstring (int *,int *) ;
 char* svn_checksum_to_cstring_display (int const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_compose_create (int *,int *) ;
 int * svn_error_create (int ,int *,int *) ;
 int * svn_error_trace (int ) ;
 int * svn_stream_checksummed2 (int *,int **,int *,int ,int ,int *) ;
 int * svn_stream_close (int *) ;
 void* svn_stream_disown (int *,int *) ;
 int * svn_stream_empty (int *) ;
 int svn_wc__db_pristine_install (int *,int *,int *,int *) ;
 int svn_wc__db_pristine_prepare_install (int **,int **,int **,int *,int *,char const*,int *,int *) ;
 int svn_wc__internal_translated_stream (int **,int *,char const*,char const*,int ,int *,int *) ;

svn_error_t *
svn_wc__internal_transmit_text_deltas(svn_stream_t *tempstream,
                                      const svn_checksum_t **new_text_base_md5_checksum,
                                      const svn_checksum_t **new_text_base_sha1_checksum,
                                      svn_wc__db_t *db,
                                      const char *local_abspath,
                                      svn_boolean_t fulltext,
                                      const svn_delta_editor_t *editor,
                                      void *file_baton,
                                      apr_pool_t *result_pool,
                                      apr_pool_t *scratch_pool)
{
  const svn_checksum_t *expected_md5_checksum;
  svn_checksum_t *verify_checksum;
  svn_checksum_t *local_md5_checksum;
  svn_checksum_t *local_sha1_checksum;
  svn_wc__db_install_data_t *install_data = ((void*)0);
  svn_error_t *err;
  svn_error_t *err2;
  svn_stream_t *base_stream;
  svn_stream_t *local_stream;


  SVN_ERR(svn_wc__internal_translated_stream(&local_stream, db,
                                             local_abspath, local_abspath,
                                             SVN_WC_TRANSLATE_TO_NF,
                                             scratch_pool, scratch_pool));







  if (tempstream)
    {




      local_stream = copying_stream(local_stream, tempstream, scratch_pool);
    }
  if (new_text_base_sha1_checksum)
    {
      svn_stream_t *new_pristine_stream;

      SVN_ERR(svn_wc__db_pristine_prepare_install(&new_pristine_stream,
                                                  &install_data,
                                                  &local_sha1_checksum, ((void*)0),
                                                  db, local_abspath,
                                                  scratch_pool, scratch_pool));
      local_stream = copying_stream(local_stream, new_pristine_stream,
                                    scratch_pool);
    }
  if (! fulltext)
    {



      SVN_ERR(read_and_checksum_pristine_text(&base_stream,
                                              &expected_md5_checksum,
                                              &verify_checksum,
                                              db, local_abspath,
                                              scratch_pool, scratch_pool));
    }
  else
    {

      base_stream = svn_stream_empty(scratch_pool);
      expected_md5_checksum = ((void*)0);
      verify_checksum = ((void*)0);
    }


  local_stream = svn_stream_checksummed2(local_stream, &local_md5_checksum,
                                         ((void*)0), svn_checksum_md5, TRUE,
                                         scratch_pool);


  {
    open_txdelta_stream_baton_t baton = { 0 };


    const char *base_digest_hex = ((void*)0);

    if (expected_md5_checksum)



      base_digest_hex = svn_checksum_to_cstring_display(expected_md5_checksum,
                                                        scratch_pool);

    baton.need_reset = FALSE;
    baton.base_stream = svn_stream_disown(base_stream, scratch_pool);
    baton.local_stream = svn_stream_disown(local_stream, scratch_pool);
    err = editor->apply_textdelta_stream(editor, file_baton, base_digest_hex,
                                         open_txdelta_stream, &baton,
                                         scratch_pool);
  }


  err2 = svn_stream_close(base_stream);
  if (err2)
    {


      verify_checksum = ((void*)0);
      err = svn_error_compose_create(err, err2);
    }

  err = svn_error_compose_create(err, svn_stream_close(local_stream));



  if (expected_md5_checksum && verify_checksum
      && !svn_checksum_match(expected_md5_checksum, verify_checksum))
    {
      err = svn_error_compose_create(
              svn_checksum_mismatch_err(expected_md5_checksum, verify_checksum,
                            scratch_pool,
                            _("Checksum mismatch for text base of '%s'"),
                            svn_dirent_local_style(local_abspath,
                                                   scratch_pool)),
              err);

      return svn_error_create(SVN_ERR_WC_CORRUPT_TEXT_BASE, err, ((void*)0));
    }



  SVN_ERR_W(err, apr_psprintf(scratch_pool,
                              _("While preparing '%s' for commit"),
                              svn_dirent_local_style(local_abspath,
                                                     scratch_pool)));

  if (new_text_base_md5_checksum)
    *new_text_base_md5_checksum = svn_checksum_dup(local_md5_checksum,
                                                   result_pool);
  if (new_text_base_sha1_checksum)
    {
      SVN_ERR(svn_wc__db_pristine_install(install_data,
                                          local_sha1_checksum,
                                          local_md5_checksum,
                                          scratch_pool));
      *new_text_base_sha1_checksum = svn_checksum_dup(local_sha1_checksum,
                                                      result_pool);
    }


  return svn_error_trace(
             editor->close_file(file_baton,
                                svn_checksum_to_cstring(local_md5_checksum,
                                                        scratch_pool),
                                scratch_pool));
}
