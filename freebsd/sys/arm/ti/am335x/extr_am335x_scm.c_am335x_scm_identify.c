
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int * device_t ;


 scalar_t__ CHIP_AM335X ;
 int * device_add_child (int *,char*,int) ;
 int * device_find_child (int *,char*,int) ;
 int device_printf (int *,char*) ;
 scalar_t__ ti_chip () ;

__attribute__((used)) static void
am335x_scm_identify(driver_t *driver, device_t parent)
{
 device_t child;


 if (ti_chip() != CHIP_AM335X)
  return;


 if (device_find_child(parent, "am335x_scm", -1) != ((void*)0))
  return;

 child = device_add_child(parent, "am335x_scm", -1);
 if (child == ((void*)0))
  device_printf(parent, "cannot add ti_scm child\n");
}
