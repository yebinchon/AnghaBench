
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
struct TYPE_7__ {int digest; } ;
typedef TYPE_2__ svn_checksum_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int APR_MD5_DIGESTSIZE ;
 int FALSE ;
 int SVN_ERR (int *) ;
 int TRUE ;
 int memcpy (unsigned char*,int ,int ) ;
 int * svn_dirent_get_absolute (char const**,char const*,int *) ;
 int * svn_error_compose_create (int *,int ) ;
 int * svn_error_trace (int ) ;
 int svn_io_file_del_none ;
 int * svn_io_open_unique_file3 (int **,char const**,int *,int ,int *,int *) ;
 int svn_io_remove_file2 (char const*,int ,int *) ;
 int * svn_stream__from_aprfile (int *,int ,int ,int *) ;
 int svn_stream_close (int *) ;
 int svn_stream_disown (int *,int *) ;
 int svn_wc__adm_get_db (int *) ;
 int * svn_wc__context_create_with_db (TYPE_1__**,int *,int ,int *) ;
 int * svn_wc__internal_transmit_text_deltas (int ,TYPE_2__ const**,int *,int ,char const*,int ,int const*,void*,int *,int *) ;
 int svn_wc_context_destroy (TYPE_1__*) ;

svn_error_t *
svn_wc_transmit_text_deltas2(const char **tempfile,
                             unsigned char digest[],
                             const char *path,
                             svn_wc_adm_access_t *adm_access,
                             svn_boolean_t fulltext,
                             const svn_delta_editor_t *editor,
                             void *file_baton,
                             apr_pool_t *pool)
{
  const char *local_abspath;
  svn_wc_context_t *wc_ctx;
  const svn_checksum_t *new_text_base_md5_checksum;
  svn_stream_t *tempstream;
  svn_error_t *err;

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, pool));
  SVN_ERR(svn_wc__context_create_with_db(&wc_ctx, ((void*)0) ,
                                         svn_wc__adm_get_db(adm_access),
                                         pool));
  if (tempfile)
    {
      apr_file_t *f;



      SVN_ERR(svn_io_open_unique_file3(&f, tempfile, ((void*)0),
                                       svn_io_file_del_none,
                                       pool, pool));
      tempstream = svn_stream__from_aprfile(f, FALSE, TRUE, pool);
    }
  else
    {
      tempstream = ((void*)0);
    }

  err = svn_wc__internal_transmit_text_deltas(svn_stream_disown(tempstream, pool),
                                              (digest
                                               ? &new_text_base_md5_checksum
                                               : ((void*)0)),
                                              ((void*)0), wc_ctx->db,
                                              local_abspath, fulltext,
                                              editor, file_baton,
                                              pool, pool);
  if (tempfile)
    {
      err = svn_error_compose_create(err, svn_stream_close(tempstream));

      if (err)
        {
          err = svn_error_compose_create(
                  err, svn_io_remove_file2(*tempfile, TRUE, pool));
        }
    }

  SVN_ERR(err);

  if (digest)
    memcpy(digest, new_text_base_md5_checksum->digest, APR_MD5_DIGESTSIZE);

  return svn_error_trace(svn_wc_context_destroy(wc_ctx));
}
