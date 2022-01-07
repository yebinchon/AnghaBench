
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_4__ {int FinalAmlLength; } ;
struct TYPE_5__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 int ASL_FILE_AML_OUTPUT ;
 int FlWriteFile (int ,void*,scalar_t__) ;

void
CgLocalWriteAmlData (
    ACPI_PARSE_OBJECT *Op,
    void *Buffer,
    UINT32 Length)
{



    FlWriteFile (ASL_FILE_AML_OUTPUT, Buffer, Length);



    if (Op)
    {
        Op->Asl.FinalAmlLength += Length;
    }
}
