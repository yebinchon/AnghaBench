
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_wc_committed_queue_t ;
typedef int svn_wc_adm_access_t ;
struct TYPE_15__ {scalar_t__ apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (TYPE_2__*) ;
 scalar_t__ SVN_ERR_WC_DB_ERROR ;
 TYPE_2__* svn_dirent_get_absolute (char const**,char const*,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_trace (int ) ;
 int svn_wc__adm_get_db (int *) ;
 TYPE_2__* svn_wc__context_create_with_db (TYPE_1__**,int *,int ,int *) ;
 TYPE_2__* svn_wc__db_pristine_get_sha1 (int const**,int ,char const*,int const*,int ,int *) ;
 int svn_wc__get_committed_queue_pool (int *) ;
 int svn_wc_context_destroy (TYPE_1__*) ;
 TYPE_2__* svn_wc_queue_committed3 (int *,TYPE_1__*,char const*,int ,int const*,int ,int ,int const*,int *) ;

svn_error_t *
svn_wc_queue_committed2(svn_wc_committed_queue_t *queue,
                        const char *path,
                        svn_wc_adm_access_t *adm_access,
                        svn_boolean_t recurse,
                        const apr_array_header_t *wcprop_changes,
                        svn_boolean_t remove_lock,
                        svn_boolean_t remove_changelist,
                        const svn_checksum_t *md5_checksum,
                        apr_pool_t *scratch_pool)
{
  svn_wc_context_t *wc_ctx;
  const char *local_abspath;
  const svn_checksum_t *sha1_checksum = ((void*)0);

  SVN_ERR(svn_wc__context_create_with_db(&wc_ctx, ((void*)0),
                                         svn_wc__adm_get_db(adm_access),
                                         scratch_pool));
  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, scratch_pool));

  if (md5_checksum != ((void*)0))
    {
      svn_error_t *err;
      err = svn_wc__db_pristine_get_sha1(&sha1_checksum, wc_ctx->db,
                                         local_abspath, md5_checksum,
                                         svn_wc__get_committed_queue_pool(queue),
                                         scratch_pool);


      if (err && err->apr_err == SVN_ERR_WC_DB_ERROR)
        {
          svn_error_clear(err);
          sha1_checksum = ((void*)0);
        }
      else
        SVN_ERR(err);
    }

  SVN_ERR(svn_wc_queue_committed3(queue, wc_ctx, local_abspath, recurse,
                                  wcprop_changes,
                                  remove_lock, remove_changelist,
                                  sha1_checksum, scratch_pool));

  return svn_error_trace(svn_wc_context_destroy(wc_ctx));
}
