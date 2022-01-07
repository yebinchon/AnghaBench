
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int ZYNQ7_PSCTL_HWBASE ;
 int ZYNQ7_PSCTL_SIZE ;
 int ZYNQ7_PSIO_HWBASE ;
 int ZYNQ7_PSIO_SIZE ;
 int devmap_add_entry (int ,int ) ;

__attribute__((used)) static int
zynq7_devmap_init(platform_t plat)
{

 devmap_add_entry(ZYNQ7_PSIO_HWBASE, ZYNQ7_PSIO_SIZE);
 devmap_add_entry(ZYNQ7_PSCTL_HWBASE, ZYNQ7_PSCTL_SIZE);

 return (0);
}
