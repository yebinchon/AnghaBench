
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ zc_guid; int zc_inject_record; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef scalar_t__ uint64_t ;


 int zio_inject_fault (int ,int,int*,int *) ;

__attribute__((used)) static int
zfs_ioc_inject_fault(zfs_cmd_t *zc)
{
 int id, error;

 error = zio_inject_fault(zc->zc_name, (int)zc->zc_guid, &id,
     &zc->zc_inject_record);

 if (error == 0)
  zc->zc_guid = (uint64_t)id;

 return (error);
}
