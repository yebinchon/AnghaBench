
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_3__ {int* Aml; } ;
typedef scalar_t__ ACPI_SIZE ;
typedef TYPE_1__ ACPI_PARSE_STATE ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int PsGetNextPackageLength ;
 int return_UINT32 (int) ;

__attribute__((used)) static UINT32
AcpiPsGetNextPackageLength (
    ACPI_PARSE_STATE *ParserState)
{
    UINT8 *Aml = ParserState->Aml;
    UINT32 PackageLength = 0;
    UINT32 ByteCount;
    UINT8 ByteZeroMask = 0x3F;


    ACPI_FUNCTION_TRACE (PsGetNextPackageLength);






    ByteCount = (Aml[0] >> 6);
    ParserState->Aml += ((ACPI_SIZE) ByteCount + 1);



    while (ByteCount)
    {







        PackageLength |= (Aml[ByteCount] << ((ByteCount << 3) - 4));

        ByteZeroMask = 0x0F;
        ByteCount--;
    }



    PackageLength |= (Aml[0] & ByteZeroMask);
    return_UINT32 (PackageLength);
}
