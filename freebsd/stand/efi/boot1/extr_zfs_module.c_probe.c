
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int spa_t ;
struct TYPE_9__ {int * devdata; } ;
typedef TYPE_1__ dev_info_t ;
typedef int EFI_STATUS ;


 int DPRINTF (char*) ;
 int EFI_OUT_OF_RESOURCES ;
 int EFI_SUCCESS ;
 int EFI_UNSUPPORTED ;
 int add_device (int *,TYPE_1__*) ;
 int devices ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 scalar_t__ vdev_probe (int ,TYPE_1__*,int **) ;
 int vdev_read ;

__attribute__((used)) static EFI_STATUS
probe(dev_info_t *dev)
{
 spa_t *spa;
 dev_info_t *tdev;


 tdev = malloc(sizeof(*dev));
 if (tdev == ((void*)0)) {
  DPRINTF("Failed to allocate tdev\n");
  return (EFI_OUT_OF_RESOURCES);
 }
 memcpy(tdev, dev, sizeof(*dev));

 if (vdev_probe(vdev_read, tdev, &spa) != 0) {
  free(tdev);
  return (EFI_UNSUPPORTED);
 }

 dev->devdata = spa;
 add_device(&devices, dev);

 return (EFI_SUCCESS);
}
