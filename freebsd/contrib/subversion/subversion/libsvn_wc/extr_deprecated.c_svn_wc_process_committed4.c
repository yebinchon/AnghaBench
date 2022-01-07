
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int svn_wc_context_t ;
typedef int svn_wc_committed_queue_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_wc__db_t ;
typedef int svn_revnum_t ;
struct TYPE_11__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (TYPE_1__*) ;
 scalar_t__ SVN_ERR_WC_DB_ERROR ;
 int * svn_checksum__from_digest_md5 (unsigned char const*,int *) ;
 TYPE_1__* svn_dirent_get_absolute (char const**,char const*,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (int ) ;
 int * svn_wc__adm_get_db (int *) ;
 TYPE_1__* svn_wc__context_create_with_db (int **,int *,int *,int *) ;
 TYPE_1__* svn_wc__db_pristine_get_sha1 (int const**,int *,char const*,int const*,int *,int *) ;
 int * svn_wc_committed_queue_create (int *) ;
 int svn_wc_context_destroy (int *) ;
 TYPE_1__* svn_wc_process_committed_queue2 (int *,int *,int ,char const*,char const*,int *,int *,int *) ;
 TYPE_1__* svn_wc_queue_committed3 (int *,int *,char const*,int ,int const*,int ,int ,int const*,int *) ;

svn_error_t *
svn_wc_process_committed4(const char *path,
                          svn_wc_adm_access_t *adm_access,
                          svn_boolean_t recurse,
                          svn_revnum_t new_revnum,
                          const char *rev_date,
                          const char *rev_author,
                          const apr_array_header_t *wcprop_changes,
                          svn_boolean_t remove_lock,
                          svn_boolean_t remove_changelist,
                          const unsigned char *digest,
                          apr_pool_t *pool)
{
  svn_wc__db_t *db = svn_wc__adm_get_db(adm_access);
  const char *local_abspath;
  const svn_checksum_t *md5_checksum;
  const svn_checksum_t *sha1_checksum = ((void*)0);
  svn_wc_context_t *wc_ctx;
  svn_wc_committed_queue_t *queue;

  SVN_ERR(svn_dirent_get_absolute(&local_abspath, path, pool));
  SVN_ERR(svn_wc__context_create_with_db(&wc_ctx, ((void*)0), db, pool));

  if (digest)
    md5_checksum = svn_checksum__from_digest_md5(digest, pool);
  else
    md5_checksum = ((void*)0);

  if (md5_checksum != ((void*)0))
    {
      svn_error_t *err;
      err = svn_wc__db_pristine_get_sha1(&sha1_checksum, db,
                                         local_abspath, md5_checksum,
                                         pool, pool);

      if (err && err->apr_err == SVN_ERR_WC_DB_ERROR)
        {
          svn_error_clear(err);
          sha1_checksum = ((void*)0);
        }
      else
        SVN_ERR(err);
    }

  queue = svn_wc_committed_queue_create(pool);
  SVN_ERR(svn_wc_queue_committed3(queue, wc_ctx, local_abspath, recurse,
                                  wcprop_changes, remove_lock,
                                  remove_changelist,
                                  sha1_checksum ,

                                  pool));

  SVN_ERR(svn_wc_process_committed_queue2(queue, wc_ctx,
                                          new_revnum, rev_date, rev_author,
                                          ((void*)0), ((void*)0) ,
                                          pool));

  return svn_error_trace(svn_wc_context_destroy(wc_ctx));
}
