
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int txn_id; } ;
typedef TYPE_1__ representation_t ;


 int svn_fs_fs__id_txn_reset (int *) ;

__attribute__((used)) static void
reset_txn_in_rep(representation_t *rep)
{
  svn_fs_fs__id_txn_reset(&rep->txn_id);
}
