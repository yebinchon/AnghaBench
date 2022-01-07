
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int z_access_mask; } ;
typedef TYPE_1__ zfs_ace_hdr_t ;
typedef int uint32_t ;



__attribute__((used)) static void
zfs_ace_fuid_set_mask(void *acep, uint32_t mask)
{
 ((zfs_ace_hdr_t *)acep)->z_access_mask = mask;
}
