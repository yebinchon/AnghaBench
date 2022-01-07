
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_intr {scalar_t__ (* ai_handler ) (int ) ;int ai_context; } ;


 scalar_t__ ACPI_INTERRUPT_HANDLED ;
 int FILTER_HANDLED ;
 int FILTER_STRAY ;
 int KASSERT (int,char*) ;
 scalar_t__ stub1 (int ) ;

__attribute__((used)) static int
acpi_intr_handler(void *arg)
{
 struct acpi_intr *ai;

 ai = arg;
 KASSERT(ai != ((void*)0) && ai->ai_handler != ((void*)0),
     ("invalid ACPI interrupt handler"));
 if (ai->ai_handler(ai->ai_context) == ACPI_INTERRUPT_HANDLED)
  return (FILTER_HANDLED);
 return (FILTER_STRAY);
}
