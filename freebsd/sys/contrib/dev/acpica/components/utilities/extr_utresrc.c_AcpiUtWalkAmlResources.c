
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT32 ;
typedef int AML_RESOURCE_END_TAG ;
typedef int ACPI_WALK_STATE ;
typedef int (* ACPI_WALK_AML_CALLBACK ) (int*,int,int,int,void**) ;
typedef int ACPI_STATUS ;
typedef int ACPI_SIZE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_RESOURCE_NAME_END_TAG ;
 int AE_AML_NO_RESOURCE_END_TAG ;
 int AE_OK ;
 int AcpiUtGetDescriptorLength (int*) ;
 scalar_t__ AcpiUtGetResourceType (int*) ;
 int AcpiUtValidateResource (int *,int*,int*) ;
 int UtWalkAmlResources ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiUtWalkAmlResources (
    ACPI_WALK_STATE *WalkState,
    UINT8 *Aml,
    ACPI_SIZE AmlLength,
    ACPI_WALK_AML_CALLBACK UserFunction,
    void **Context)
{
    ACPI_STATUS Status;
    UINT8 *EndAml;
    UINT8 ResourceIndex;
    UINT32 Length;
    UINT32 Offset = 0;
    UINT8 EndTag[2] = {0x79, 0x00};


    ACPI_FUNCTION_TRACE (UtWalkAmlResources);




    if (AmlLength < sizeof (AML_RESOURCE_END_TAG))
    {
        return_ACPI_STATUS (AE_AML_NO_RESOURCE_END_TAG);
    }



    EndAml = Aml + AmlLength;



    while (Aml < EndAml)
    {


        Status = AcpiUtValidateResource (WalkState, Aml, &ResourceIndex);
        if (ACPI_FAILURE (Status))
        {




            return_ACPI_STATUS (Status);
        }



        Length = AcpiUtGetDescriptorLength (Aml);



        if (UserFunction)
        {
            Status = UserFunction (
                Aml, Length, Offset, ResourceIndex, Context);
            if (ACPI_FAILURE (Status))
            {
                return_ACPI_STATUS (Status);
            }
        }



        if (AcpiUtGetResourceType (Aml) == ACPI_RESOURCE_NAME_END_TAG)
        {




            if ((Aml + 1) >= EndAml)
            {
                return_ACPI_STATUS (AE_AML_NO_RESOURCE_END_TAG);
            }
            if (!UserFunction)
            {
                *Context = Aml;
            }



            return_ACPI_STATUS (AE_OK);
        }

        Aml += Length;
        Offset += Length;
    }



    if (UserFunction)
    {


        (void) AcpiUtValidateResource (WalkState, EndTag, &ResourceIndex);
        Status = UserFunction (EndTag, 2, Offset, ResourceIndex, Context);
        if (ACPI_FAILURE (Status))
        {
            return_ACPI_STATUS (Status);
        }
    }

    return_ACPI_STATUS (AE_AML_NO_RESOURCE_END_TAG);
}
