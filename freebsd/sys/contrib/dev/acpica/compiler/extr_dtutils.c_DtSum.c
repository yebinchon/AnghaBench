
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
struct TYPE_3__ {int Length; int Buffer; } ;
typedef TYPE_1__ DT_SUBTABLE ;


 scalar_t__ AcpiTbChecksum (int ,int ) ;

__attribute__((used)) static void
DtSum (
    DT_SUBTABLE *Subtable,
    void *Context,
    void *ReturnValue)
{
    UINT8 Checksum;
    UINT8 *Sum = ReturnValue;


    Checksum = AcpiTbChecksum (Subtable->Buffer, Subtable->Length);
    *Sum = (UINT8) (*Sum + Checksum);
}
