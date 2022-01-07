
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char UINT8 ;
typedef size_t UINT32 ;
struct TYPE_8__ {struct TYPE_8__* Parent; } ;
struct TYPE_6__ {TYPE_3__* Node; TYPE_2__* Parent; } ;
struct TYPE_7__ {TYPE_1__ Common; } ;
typedef scalar_t__ ACPI_SIZE ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;
typedef TYPE_3__ ACPI_NAMESPACE_NODE ;


 char* ACPI_ALLOCATE_ZEROED (scalar_t__) ;
 int ACPI_FREE (char*) ;
 scalar_t__ AML_PARENT_PREFIX ;
 char AML_ROOT_PREFIX ;
 char* AcpiNsGetExternalPathname (TYPE_3__*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static char *
AcpiDmNormalizeParentPrefix (
    ACPI_PARSE_OBJECT *Op,
    char *Path)
{
    ACPI_NAMESPACE_NODE *Node;
    char *Fullpath;
    char *ParentPath;
    ACPI_SIZE Length;
    UINT32 Index = 0;


    if (!Op)
    {
        return (((void*)0));
    }



    Op = Op->Common.Parent;
    while (Op)
    {
        if (Op->Common.Node)
        {
            break;
        }

        Op = Op->Common.Parent;
    }

    if (!Op)
    {
        return (((void*)0));
    }






    Node = Op->Common.Node;
    while (Node && (*Path == (UINT8) AML_PARENT_PREFIX))
    {
        Node = Node->Parent;
        Path++;
    }

    if (!Node)
    {
        return (((void*)0));
    }



    ParentPath = AcpiNsGetExternalPathname (Node);
    if (!ParentPath)
    {
        return (((void*)0));
    }

    Length = (strlen (ParentPath) + strlen (Path) + 1);
    if (ParentPath[1])
    {




        Length++;



        if (*ParentPath == AML_ROOT_PREFIX)
        {
            Index = 1;
        }
    }

    Fullpath = ACPI_ALLOCATE_ZEROED (Length);
    if (!Fullpath)
    {
        goto Cleanup;
    }







    strcpy (Fullpath, &ParentPath[Index]);





    if (ParentPath[1])
    {
        strcat (Fullpath, ".");
    }



    strcat (Fullpath, Path);

Cleanup:
    ACPI_FREE (ParentPath);
    return (Fullpath);
}
