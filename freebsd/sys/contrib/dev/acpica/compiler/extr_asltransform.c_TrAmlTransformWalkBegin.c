
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int ACPI_STATUS ;
typedef int ACPI_PARSE_OBJECT ;


 int AE_OK ;
 int TrTransformSubtree (int *) ;

ACPI_STATUS
TrAmlTransformWalkBegin (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Level,
    void *Context)
{

    TrTransformSubtree (Op);
    return (AE_OK);
}
