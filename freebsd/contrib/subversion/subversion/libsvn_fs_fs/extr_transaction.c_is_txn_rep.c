
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_boolean_t ;
struct TYPE_3__ {int txn_id; } ;
typedef TYPE_1__ representation_t ;


 int svn_fs_fs__id_txn_used (int *) ;

__attribute__((used)) static svn_boolean_t
is_txn_rep(const representation_t *rep)
{
  return svn_fs_fs__id_txn_used(&rep->txn_id);
}
