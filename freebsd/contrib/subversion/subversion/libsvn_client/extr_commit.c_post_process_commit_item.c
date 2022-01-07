
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_wc_context_t ;
typedef int svn_wc_committed_queue_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int state_flags; scalar_t__ kind; int incoming_prop_changes; int path; scalar_t__ copyfrom_url; } ;
typedef TYPE_1__ svn_client_commit_item3_t ;
typedef int svn_checksum_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_CLIENT_COMMIT_ITEM_ADD ;
 int SVN_CLIENT_COMMIT_ITEM_DELETE ;
 int SVN_CLIENT_COMMIT_ITEM_LOCK_TOKEN ;
 int SVN_CLIENT_COMMIT_ITEM_PROP_MODS ;
 int SVN_CLIENT_COMMIT_ITEM_TEXT_MODS ;
 int TRUE ;
 int * svn_error_trace (int ) ;
 scalar_t__ svn_node_dir ;
 int svn_wc_queue_committed4 (int *,int *,int ,int,int,int ,int,int,int const*,int *) ;

__attribute__((used)) static svn_error_t *
post_process_commit_item(svn_wc_committed_queue_t *queue,
                         const svn_client_commit_item3_t *item,
                         svn_wc_context_t *wc_ctx,
                         svn_boolean_t keep_changelists,
                         svn_boolean_t keep_locks,
                         svn_boolean_t commit_as_operations,
                         const svn_checksum_t *sha1_checksum,
                         apr_pool_t *scratch_pool)
{
  svn_boolean_t loop_recurse = FALSE;
  svn_boolean_t remove_lock;

  if (! commit_as_operations
      && (item->state_flags & SVN_CLIENT_COMMIT_ITEM_ADD)
      && (item->kind == svn_node_dir)
      && (item->copyfrom_url))
    loop_recurse = TRUE;

  remove_lock = (! keep_locks && (item->state_flags
                                       & (SVN_CLIENT_COMMIT_ITEM_LOCK_TOKEN
                                          | SVN_CLIENT_COMMIT_ITEM_ADD
                                          | SVN_CLIENT_COMMIT_ITEM_DELETE)));





  if (item->state_flags & SVN_CLIENT_COMMIT_ITEM_DELETE)
    remove_lock = TRUE;

  return svn_error_trace(
         svn_wc_queue_committed4(queue, wc_ctx, item->path,
                                 loop_recurse,
                                 0 != (item->state_flags &
                                       (SVN_CLIENT_COMMIT_ITEM_ADD
                                        | SVN_CLIENT_COMMIT_ITEM_DELETE
                                        | SVN_CLIENT_COMMIT_ITEM_TEXT_MODS
                                        | SVN_CLIENT_COMMIT_ITEM_PROP_MODS)),
                                 item->incoming_prop_changes,
                                 remove_lock, !keep_changelists,
                                 sha1_checksum, scratch_pool));
}
