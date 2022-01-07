
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* lockcookie; int txn_id; } ;
typedef TYPE_1__ unlock_proto_rev_baton_t ;
typedef int svn_fs_x__txn_id_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int unlock_proto_rev_body ;
 int * with_txnlist_lock (int *,int ,TYPE_1__*,int *) ;

__attribute__((used)) static svn_error_t *
unlock_proto_rev(svn_fs_t *fs,
                 svn_fs_x__txn_id_t txn_id,
                 void *lockcookie,
                 apr_pool_t *scratch_pool)
{
  unlock_proto_rev_baton_t b;

  b.txn_id = txn_id;
  b.lockcookie = lockcookie;
  return with_txnlist_lock(fs, unlock_proto_rev_body, &b, scratch_pool);
}
