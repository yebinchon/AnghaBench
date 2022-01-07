
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lzh; } ;
typedef TYPE_1__ libbe_handle_t ;


 int BE_ERR_NOENT ;
 int BE_ERR_SUCCESS ;
 int BE_MAXPATHLEN ;
 int ZFS_TYPE_DATASET ;
 int be_root_concat (TYPE_1__*,char*,char*) ;
 int zfs_dataset_exists (int ,char*,int ) ;

int
be_exists(libbe_handle_t *lbh, char *be)
{
 char buf[BE_MAXPATHLEN];

 be_root_concat(lbh, be, buf);

 if (!zfs_dataset_exists(lbh->lzh, buf, ZFS_TYPE_DATASET))
  return (BE_ERR_NOENT);

 return (BE_ERR_SUCCESS);
}
