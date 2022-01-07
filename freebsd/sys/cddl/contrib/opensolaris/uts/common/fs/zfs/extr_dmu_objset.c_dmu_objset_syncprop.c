
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_sync_type_t ;
struct TYPE_3__ {int os_sync; } ;
typedef TYPE_1__ objset_t ;



zfs_sync_type_t
dmu_objset_syncprop(objset_t *os)
{
 return (os->os_sync);
}
