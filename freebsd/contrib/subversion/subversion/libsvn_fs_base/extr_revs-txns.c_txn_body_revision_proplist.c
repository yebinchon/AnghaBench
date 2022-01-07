
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int proplist; } ;
typedef TYPE_1__ transaction_t ;
struct TYPE_7__ {int pool; int fs; } ;
typedef TYPE_2__ trail_t ;
typedef int svn_error_t ;
struct revision_proplist_args {int * table_p; int rev; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_rev_txn (TYPE_1__**,int *,int ,int ,TYPE_2__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_revision_proplist(void *baton, trail_t *trail)
{
  struct revision_proplist_args *args = baton;
  transaction_t *txn;

  SVN_ERR(get_rev_txn(&txn, ((void*)0), trail->fs, args->rev, trail, trail->pool));
  *(args->table_p) = txn->proplist;
  return SVN_NO_ERROR;
}
