
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT8 ;
typedef scalar_t__ UINT32 ;
struct TYPE_6__ {TYPE_2__* Next; } ;
struct TYPE_7__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 int ApCheckObjectType (char const*,TYPE_2__*,int ,scalar_t__) ;

__attribute__((used)) static ACPI_PARSE_OBJECT *
ApCheckPackageElements (
    const char *PredefinedName,
    ACPI_PARSE_OBJECT *Op,
    UINT8 Type1,
    UINT32 Count1,
    UINT8 Type2,
    UINT32 Count2)
{
    UINT32 i;
    for (i = 0; (i < Count1) && Op; i++)
    {
        ApCheckObjectType (PredefinedName, Op, Type1, i);
        Op = Op->Asl.Next;
    }

    for (i = 0; (i < Count2) && Op; i++)
    {
        ApCheckObjectType (PredefinedName, Op, Type2, (i + Count1));
        Op = Op->Asl.Next;
    }

    return (Op);
}
