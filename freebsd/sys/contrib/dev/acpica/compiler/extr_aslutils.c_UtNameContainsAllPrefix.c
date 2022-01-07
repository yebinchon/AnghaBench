
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_5__ {char* String; } ;
struct TYPE_6__ {size_t AmlLength; TYPE_1__ Value; } ;
struct TYPE_7__ {TYPE_2__ Asl; } ;
typedef int BOOLEAN ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 int FALSE ;
 int TRUE ;

BOOLEAN
UtNameContainsAllPrefix (
    ACPI_PARSE_OBJECT *Op)
{
    UINT32 Length = Op->Asl.AmlLength;
    UINT32 i;

    for (i = 0; i < Length; i++)
    {
        if (Op->Asl.Value.String[i] != '^')
        {
            return (FALSE);
        }
    }

    return (TRUE);
}
