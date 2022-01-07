
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
struct TYPE_5__ {scalar_t__ old_revision; } ;
typedef TYPE_1__ svn_repos_notify_t ;
typedef int svn_error_t ;
struct revision_baton {scalar_t__ rev; scalar_t__ skipped; int txn; int txn_root; scalar_t__ rev_offset; } ;
struct parse_baton {scalar_t__ oldest_dumpstream_rev; int notify_pool; int notify_baton; int (* notify_func ) (int ,TYPE_1__*,int ) ;int fs; } ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int32_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_FS_TXN_CLIENT_DATE ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 struct revision_baton* make_revision_baton (int *,struct parse_baton*,int *) ;
 int stub1 (int ,TYPE_1__*,int ) ;
 int stub2 (int ,TYPE_1__*,int ) ;
 int svn_fs_begin_txn2 (int *,int ,scalar_t__,int ,int *) ;
 int svn_fs_txn_root (int *,int ,int *) ;
 int svn_fs_youngest_rev (scalar_t__*,int ,int *) ;
 int svn_pool_clear (int ) ;
 TYPE_1__* svn_repos_notify_create (int ,int ) ;
 int svn_repos_notify_load_skipped_rev ;
 int svn_repos_notify_load_txn_start ;

__attribute__((used)) static svn_error_t *
new_revision_record(void **revision_baton,
                    apr_hash_t *headers,
                    void *parse_baton,
                    apr_pool_t *pool)
{
  struct parse_baton *pb = parse_baton;
  struct revision_baton *rb;
  svn_revnum_t head_rev;

  rb = make_revision_baton(headers, pb, pool);
  SVN_ERR(svn_fs_youngest_rev(&head_rev, pb->fs, pool));





  rb->rev_offset = (apr_int32_t) ((rb->rev) - (head_rev + 1));

  if ((rb->rev > 0) && (! rb->skipped))
    {

      SVN_ERR(svn_fs_begin_txn2(&(rb->txn), pb->fs, head_rev,
                                SVN_FS_TXN_CLIENT_DATE, pool));
      SVN_ERR(svn_fs_txn_root(&(rb->txn_root), rb->txn, pool));

      if (pb->notify_func)
        {

          svn_repos_notify_t *notify = svn_repos_notify_create(
                                            svn_repos_notify_load_txn_start,
                                            pb->notify_pool);

          notify->old_revision = rb->rev;
          pb->notify_func(pb->notify_baton, notify, pb->notify_pool);
          svn_pool_clear(pb->notify_pool);
        }


      if (!SVN_IS_VALID_REVNUM(pb->oldest_dumpstream_rev))
        pb->oldest_dumpstream_rev = rb->rev;
    }


  if (rb->skipped && pb->notify_func)
    {

      svn_repos_notify_t *notify = svn_repos_notify_create(
                                        svn_repos_notify_load_skipped_rev,
                                        pb->notify_pool);

      notify->old_revision = rb->rev;
      pb->notify_func(pb->notify_baton, notify, pb->notify_pool);
      svn_pool_clear(pb->notify_pool);
    }






  *revision_baton = rb;
  return SVN_NO_ERROR;
}
