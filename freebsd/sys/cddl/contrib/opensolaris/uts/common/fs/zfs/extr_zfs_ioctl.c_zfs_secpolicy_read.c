
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvlist_t ;
typedef int cred_t ;


 int ENOENT ;
 scalar_t__ INGLOBALZONE (int ) ;
 int SET_ERROR (int ) ;
 int curthread ;
 scalar_t__ zone_dataset_visible (int ,int *) ;

__attribute__((used)) static int
zfs_secpolicy_read(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{
 if (INGLOBALZONE(curthread) ||
     zone_dataset_visible(zc->zc_name, ((void*)0)))
  return (0);

 return (SET_ERROR(ENOENT));
}
