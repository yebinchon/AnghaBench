
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT8 ;
typedef int UINT32 ;


 scalar_t__ AcpiTbChecksum (scalar_t__*,int ) ;

UINT8
AcpiDmGenerateChecksum (
    void *Table,
    UINT32 Length,
    UINT8 OriginalChecksum)
{
    UINT8 Checksum;




    Checksum = AcpiTbChecksum ((UINT8 *) Table, Length);



    Checksum = (UINT8) (Checksum - OriginalChecksum);



    Checksum = (UINT8) (0 - Checksum);
    return (Checksum);
}
