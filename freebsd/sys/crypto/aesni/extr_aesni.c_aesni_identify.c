
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int driver_t ;
typedef int device_t ;


 scalar_t__ BUS_ADD_CHILD (int ,int,char*,int) ;
 int * device_find_child (int ,char*,int) ;
 int panic (char*) ;

__attribute__((used)) static void
aesni_identify(driver_t *drv, device_t parent)
{


 if (device_find_child(parent, "aesni", -1) == ((void*)0) &&
     BUS_ADD_CHILD(parent, 10, "aesni", -1) == 0)
  panic("aesni: could not attach");
}
