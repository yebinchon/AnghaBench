
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int emac_suspend (int ) ;

__attribute__((used)) static int
emac_shutdown(device_t dev)
{

 return (emac_suspend(dev));
}
