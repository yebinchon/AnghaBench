
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fs; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;
struct list_transactions_args {int pool; int names_p; } ;


 int * svn_fs_bdb__get_txn_list (int ,int ,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_list_transactions(void* baton, trail_t *trail)
{
  struct list_transactions_args *args = baton;
  return svn_fs_bdb__get_txn_list(args->names_p, trail->fs,
                                  trail, args->pool);
}
