
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_fs_x__txn_id_t ;
struct TYPE_4__ {int is_txn_root; TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_root_t ;
struct TYPE_5__ {int txn_id; } ;
typedef TYPE_2__ fs_txn_root_data_t ;


 int assert (int ) ;

svn_fs_x__txn_id_t
svn_fs_x__root_txn_id(svn_fs_root_t *root)
{
  fs_txn_root_data_t *frd = root->fsap_data;
  assert(root->is_txn_root);

  return frd->txn_id;
}
