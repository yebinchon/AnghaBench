
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef scalar_t__ UINT32 ;


 int AcpiDmDescriptorName () ;
 int AcpiDmDisasmByteList (scalar_t__,int *,scalar_t__) ;
 int AcpiDmIndent (scalar_t__) ;
 int AcpiOsPrintf (char*,...) ;

void
AcpiDmVendorCommon (
    const char *Name,
    UINT8 *ByteData,
    UINT32 Length,
    UINT32 Level)
{



    AcpiDmIndent (Level);
    AcpiOsPrintf ("Vendor%s (", Name);



    AcpiDmDescriptorName ();
    AcpiOsPrintf (")      // Length = 0x%.2X\n", Length);



    AcpiDmIndent (Level);
    AcpiOsPrintf ("{\n");

    AcpiDmDisasmByteList (Level + 1, ByteData, Length);

    AcpiDmIndent (Level);
    AcpiOsPrintf ("}\n");
}
