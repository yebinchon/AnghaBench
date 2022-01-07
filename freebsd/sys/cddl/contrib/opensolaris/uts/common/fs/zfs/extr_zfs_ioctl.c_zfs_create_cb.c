
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int zct_zplprops; } ;
typedef TYPE_1__ zfs_creat_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;
typedef int cred_t ;


 int zfs_create_fs (int *,int *,int ,int *) ;

__attribute__((used)) static void
zfs_create_cb(objset_t *os, void *arg, cred_t *cr, dmu_tx_t *tx)
{
 zfs_creat_t *zct = arg;

 zfs_create_fs(os, cr, zct->zct_zplprops, tx);
}
