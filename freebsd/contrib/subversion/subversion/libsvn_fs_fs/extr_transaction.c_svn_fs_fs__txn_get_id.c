
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_txn_t ;
typedef int svn_fs_fs__id_part_t ;
struct TYPE_5__ {int const txn_id; } ;
typedef TYPE_2__ fs_txn_data_t ;



const svn_fs_fs__id_part_t *
svn_fs_fs__txn_get_id(svn_fs_txn_t *txn)
{
  fs_txn_data_t *ftd = txn->fsap_data;
  return &ftd->txn_id;
}
