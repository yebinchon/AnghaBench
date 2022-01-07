
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* z_zfsvfs; } ;
typedef TYPE_2__ znode_t ;
struct TYPE_10__ {int zgd_lr; scalar_t__ zgd_db; TYPE_2__* zgd_private; } ;
typedef TYPE_3__ zgd_t ;
typedef int objset_t ;
struct TYPE_8__ {int * z_os; } ;


 int VN_RELE_ASYNC (int ,int ) ;
 int ZTOV (TYPE_2__*) ;
 int dmu_buf_rele (scalar_t__,TYPE_3__*) ;
 int dmu_objset_pool (int *) ;
 int dsl_pool_vnrele_taskq (int ) ;
 int kmem_free (TYPE_3__*,int) ;
 int rangelock_exit (int ) ;

void
zfs_get_done(zgd_t *zgd, int error)
{
 znode_t *zp = zgd->zgd_private;
 objset_t *os = zp->z_zfsvfs->z_os;

 if (zgd->zgd_db)
  dmu_buf_rele(zgd->zgd_db, zgd);

 rangelock_exit(zgd->zgd_lr);





 VN_RELE_ASYNC(ZTOV(zp), dsl_pool_vnrele_taskq(dmu_objset_pool(os)));

 kmem_free(zgd, sizeof (zgd_t));
}
