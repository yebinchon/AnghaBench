
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_info_t ;
typedef int EFI_STATUS ;


 int EFI_SUCCESS ;
 int EFI_UNSUPPORTED ;
 int add_device (int *,int *) ;
 int devices ;
 scalar_t__ init_dev (int *) ;

__attribute__((used)) static EFI_STATUS
probe(dev_info_t* dev)
{

 if (init_dev(dev) < 0)
  return (EFI_UNSUPPORTED);

 add_device(&devices, dev);

 return (EFI_SUCCESS);
}
