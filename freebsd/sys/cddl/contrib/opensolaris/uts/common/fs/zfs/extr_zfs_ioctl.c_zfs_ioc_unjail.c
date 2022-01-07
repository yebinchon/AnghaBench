
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ zc_jailid; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
struct TYPE_5__ {int td_ucred; } ;


 TYPE_3__* curthread ;
 int zone_dataset_detach (int ,int ,int) ;

__attribute__((used)) static int
zfs_ioc_unjail(zfs_cmd_t *zc)
{

 return (zone_dataset_detach(curthread->td_ucred, zc->zc_name,
     (int)zc->zc_jailid));
}
