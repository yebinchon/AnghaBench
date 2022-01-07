
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; int fs; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;


 int * svn_fs_bdb__delete_txn (int ,char const*,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_delete_txn(void *baton, trail_t *trail)
{
  const char *txn_id = *(const char **)baton;

  return svn_fs_bdb__delete_txn(trail->fs, txn_id, trail, trail->pool);
}
