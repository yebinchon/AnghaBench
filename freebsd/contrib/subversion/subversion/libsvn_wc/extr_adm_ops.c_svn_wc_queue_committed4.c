
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
struct TYPE_6__ {int pool; int wc_queues; } ;
typedef TYPE_2__ svn_wc_committed_queue_t ;
typedef int svn_wc__db_commit_queue_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 char* apr_pstrdup (int ,char const*) ;
 int svn_dirent_is_absolute (char const*) ;
 int * svn_error_trace (int ) ;
 int * svn_hash_gets (int ,char const*) ;
 int svn_hash_sets (int ,char const*,int *) ;
 int svn_wc__db_commit_queue_add (int *,char const*,int ,int ,int ,int ,int const*,int ,int ,int *) ;
 int svn_wc__db_create_commit_queue (int **,int ,char const*,int ,int *) ;
 int svn_wc__db_get_wcroot (char const**,int ,char const*,int *,int *) ;
 int svn_wc__prop_array_to_hash (int const*,int ) ;

svn_error_t *
svn_wc_queue_committed4(svn_wc_committed_queue_t *queue,
                        svn_wc_context_t *wc_ctx,
                        const char *local_abspath,
                        svn_boolean_t recurse,
                        svn_boolean_t is_committed,
                        const apr_array_header_t *wcprop_changes,
                        svn_boolean_t remove_lock,
                        svn_boolean_t remove_changelist,
                        const svn_checksum_t *sha1_checksum,
                        apr_pool_t *scratch_pool)
{
  const char *wcroot_abspath;
  svn_wc__db_commit_queue_t *db_queue;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));





  SVN_ERR(svn_wc__db_get_wcroot(&wcroot_abspath,
                                wc_ctx->db, local_abspath,
                                scratch_pool, scratch_pool));

  db_queue = svn_hash_gets(queue->wc_queues, wcroot_abspath);
  if (! db_queue)
    {
      wcroot_abspath = apr_pstrdup(queue->pool, wcroot_abspath);

      SVN_ERR(svn_wc__db_create_commit_queue(&db_queue,
                                             wc_ctx->db, wcroot_abspath,
                                             queue->pool, scratch_pool));

      svn_hash_sets(queue->wc_queues, wcroot_abspath, db_queue);
    }

  return svn_error_trace(
          svn_wc__db_commit_queue_add(db_queue, local_abspath, recurse,
                                      is_committed, remove_lock,
                                      remove_changelist, sha1_checksum,
                                      svn_wc__prop_array_to_hash(wcprop_changes,
                                                                 queue->pool),
                                      queue->pool, scratch_pool));
}
