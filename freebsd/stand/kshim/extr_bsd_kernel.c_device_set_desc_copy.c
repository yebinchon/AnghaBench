
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int device_set_desc (int ,char const*) ;

void
device_set_desc_copy(device_t dev, const char *desc)
{
 device_set_desc(dev, desc);
}
