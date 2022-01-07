
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; int fs; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;
struct rev_get_txn_id_args {int revision; int txn_id; } ;


 int * svn_fs_base__rev_get_txn_id (int ,int ,int ,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_rev_get_txn_id(void *baton, trail_t *trail)
{
  struct rev_get_txn_id_args *args = baton;
  return svn_fs_base__rev_get_txn_id(args->txn_id, trail->fs,
                                     args->revision, trail, trail->pool);
}
