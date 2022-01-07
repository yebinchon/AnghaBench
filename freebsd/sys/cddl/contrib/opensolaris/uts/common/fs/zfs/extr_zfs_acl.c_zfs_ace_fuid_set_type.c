
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int z_type; } ;
typedef TYPE_1__ zfs_ace_hdr_t ;
typedef int uint16_t ;



__attribute__((used)) static void
zfs_ace_fuid_set_type(void *acep, uint16_t type)
{
 ((zfs_ace_hdr_t *)acep)->z_type = type;
}
