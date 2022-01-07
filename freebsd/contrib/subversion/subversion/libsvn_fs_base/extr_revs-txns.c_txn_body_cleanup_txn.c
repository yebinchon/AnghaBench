
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; int fs; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;
struct cleanup_txn_args {int name; int txn_p; } ;


 int TRUE ;
 int * get_txn (int ,int ,int ,int ,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_cleanup_txn(void *baton, trail_t *trail)
{
  struct cleanup_txn_args *args = baton;
  return get_txn(args->txn_p, trail->fs, args->name, TRUE,
                 trail, trail->pool);
}
