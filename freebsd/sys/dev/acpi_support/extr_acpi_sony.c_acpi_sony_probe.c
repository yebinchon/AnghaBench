
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ACPI_ID_PROBE (int ,int ,int ,int *) ;
 int device_get_parent (int ) ;
 int device_set_desc (int ,char*) ;
 int sny_id ;

__attribute__((used)) static int
acpi_sony_probe(device_t dev)
{
 int ret;

 ret = ACPI_ID_PROBE(device_get_parent(dev), dev, sny_id, ((void*)0));
 if (ret <= 0) {
  device_set_desc(dev, "Sony notebook controller");
 }
 return (ret);
}
