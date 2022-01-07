
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int vdev_guid_sum; } ;
typedef TYPE_2__ vdev_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_6__ {scalar_t__ blk_birth; } ;
struct TYPE_8__ {scalar_t__ ub_txg; TYPE_1__ ub_rootbp; scalar_t__ ub_checkpoint_txg; int ub_software_version; int ub_timestamp; int ub_guid_sum; int ub_magic; } ;
typedef TYPE_3__ uberblock_t ;
typedef int boolean_t ;


 int ASSERT (int) ;
 int SPA_VERSION ;
 int UBERBLOCK_MAGIC ;
 int gethrestime_sec () ;

boolean_t
uberblock_update(uberblock_t *ub, vdev_t *rvd, uint64_t txg)
{
 ASSERT(ub->ub_txg < txg);





 ub->ub_magic = UBERBLOCK_MAGIC;
 ub->ub_txg = txg;
 ub->ub_guid_sum = rvd->vdev_guid_sum;
 ub->ub_timestamp = gethrestime_sec();
 ub->ub_software_version = SPA_VERSION;
 ub->ub_checkpoint_txg = 0;

 return (ub->ub_rootbp.blk_birth == txg);
}
