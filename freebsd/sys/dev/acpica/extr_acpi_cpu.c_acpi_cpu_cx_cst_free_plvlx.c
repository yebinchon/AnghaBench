
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_cx {int * p_lvlx; int res_rid; int res_type; } ;
typedef int device_t ;


 int bus_release_resource (int ,int ,int ,int *) ;

__attribute__((used)) static void
acpi_cpu_cx_cst_free_plvlx(device_t cpu_dev, struct acpi_cx *cx_ptr)
{

 if (cx_ptr->p_lvlx == ((void*)0))
  return;
 bus_release_resource(cpu_dev, cx_ptr->res_type, cx_ptr->res_rid,
     cx_ptr->p_lvlx);
 cx_ptr->p_lvlx = ((void*)0);
}
