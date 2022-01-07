
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_6__ {int BitOffset; int BitLength; } ;
struct TYPE_8__ {TYPE_1__ Tag; } ;
struct TYPE_7__ {char* ExternalName; TYPE_3__ Value; int CompileFlags; } ;
struct TYPE_9__ {TYPE_2__ Asl; } ;
typedef TYPE_4__ ACPI_PARSE_OBJECT ;


 int OP_IS_RESOURCE_FIELD ;

void
RsCreateResourceField (
    ACPI_PARSE_OBJECT *Op,
    char *Name,
    UINT32 ByteOffset,
    UINT32 BitOffset,
    UINT32 BitLength)
{

    Op->Asl.ExternalName = Name;
    Op->Asl.CompileFlags |= OP_IS_RESOURCE_FIELD;

    Op->Asl.Value.Tag.BitOffset = (ByteOffset * 8) + BitOffset;
    Op->Asl.Value.Tag.BitLength = BitLength;
}
