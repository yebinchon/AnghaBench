
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ahci_detach (int ) ;

__attribute__((used)) static int
imx6_ahci_detach(device_t dev)
{

 return (ahci_detach(dev));
}
