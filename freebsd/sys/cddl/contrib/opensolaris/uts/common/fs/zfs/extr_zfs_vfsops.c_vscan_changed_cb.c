
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int z_vscan; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef int uint64_t ;



__attribute__((used)) static void
vscan_changed_cb(void *arg, uint64_t newval)
{
 zfsvfs_t *zfsvfs = arg;

 zfsvfs->z_vscan = newval;
}
