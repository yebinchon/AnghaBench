
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int ACPI_STATUS ;


 int AE_NOT_EXIST ;
 int AE_OK ;
 scalar_t__ db_readline (char*,int) ;
 int printf (char*) ;

ACPI_STATUS
AcpiOsGetLine(char *Buffer, UINT32 BufferLength, UINT32 *BytesRead)
{
 printf("AcpiOsGetLine called but no input support");
 return (AE_NOT_EXIST);

}
