
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_SIZE ;


 void* ACPI_TO_POINTER (int ) ;
 int strtoul (void*,int *,int) ;

__attribute__((used)) static void *
AcpiDbGetPointer (
    void *Target)
{
    void *ObjPtr;
    ACPI_SIZE Address;


    Address = strtoul (Target, ((void*)0), 16);
    ObjPtr = ACPI_TO_POINTER (Address);
    return (ObjPtr);
}
