
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_intr {int ai_rid; int * ai_irq; int * ai_handle; } ;
typedef int device_t ;


 int M_ACPIINTR ;
 int SYS_RES_IRQ ;
 int bus_delete_resource (int ,int ,int ) ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int free (struct acpi_intr*,int ) ;

__attribute__((used)) static void
acpi_intr_destroy(device_t dev, struct acpi_intr *ai)
{

 if (ai->ai_handle != ((void*)0))
  bus_teardown_intr(dev, ai->ai_irq, ai->ai_handle);
 if (ai->ai_irq != ((void*)0))
  bus_release_resource(dev, SYS_RES_IRQ, ai->ai_rid, ai->ai_irq);
 bus_delete_resource(dev, SYS_RES_IRQ, ai->ai_rid);
 free(ai, M_ACPIINTR);
}
