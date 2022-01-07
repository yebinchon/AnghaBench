
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT8 ;


 int AslGbl_RootTable ;
 int DtSum ;
 int DtWalkTableTree (int ,int ,int *,scalar_t__*) ;

void
DtSetTableChecksum (
    UINT8 *ChecksumPointer)
{
    UINT8 Checksum = 0;
    UINT8 OldSum;


    DtWalkTableTree (AslGbl_RootTable, DtSum, ((void*)0), &Checksum);

    OldSum = *ChecksumPointer;
    Checksum = (UINT8) (Checksum - OldSum);



    Checksum = (UINT8) (0 - Checksum);
    *ChecksumPointer = Checksum;
}
