
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_fs_x__txn_id_t ;
struct TYPE_4__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_txn_t ;
struct TYPE_5__ {int txn_id; } ;
typedef TYPE_2__ fs_txn_data_t ;



svn_fs_x__txn_id_t
svn_fs_x__txn_get_id(svn_fs_txn_t *txn)
{
  fs_txn_data_t *ftd = txn->fsap_data;
  return ftd->txn_id;
}
