
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
struct unlock_proto_rev_baton {void* lockcookie; int txn_id; } ;
typedef int apr_pool_t ;


 int unlock_proto_rev_body ;
 int * with_txnlist_lock (int *,int ,struct unlock_proto_rev_baton*,int *) ;

__attribute__((used)) static svn_error_t *
unlock_proto_rev(svn_fs_t *fs,
                 const svn_fs_fs__id_part_t *txn_id,
                 void *lockcookie,
                 apr_pool_t *pool)
{
  struct unlock_proto_rev_baton b;

  b.txn_id = *txn_id;
  b.lockcookie = lockcookie;
  return with_txnlist_lock(fs, unlock_proto_rev_body, &b, pool);
}
