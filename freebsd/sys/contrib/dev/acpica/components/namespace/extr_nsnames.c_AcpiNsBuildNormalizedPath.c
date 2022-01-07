
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_5__ {struct TYPE_5__* Parent; int Name; } ;
typedef scalar_t__ BOOLEAN ;
typedef TYPE_1__ ACPI_NAMESPACE_NODE ;


 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_1__*) ;
 int ACPI_MOVE_32_TO_32 (char*,int *) ;
 int ACPI_NAMESEG_SIZE ;
 int ACPI_PATH_PUT8 (char*,int,char,int) ;
 char AML_DUAL_NAME_PREFIX ;
 char AML_ROOT_PREFIX ;
 TYPE_1__* AcpiGbl_RootNode ;
 scalar_t__ FALSE ;
 int NsBuildNormalizedPath ;
 int return_UINT32 (int) ;

UINT32
AcpiNsBuildNormalizedPath (
    ACPI_NAMESPACE_NODE *Node,
    char *FullPath,
    UINT32 PathSize,
    BOOLEAN NoTrailing)
{
    UINT32 Length = 0, i;
    char Name[ACPI_NAMESEG_SIZE];
    BOOLEAN DoNoTrailing;
    char c, *Left, *Right;
    ACPI_NAMESPACE_NODE *NextNode;


    ACPI_FUNCTION_TRACE_PTR (NsBuildNormalizedPath, Node);
    if (!FullPath)
    {
        PathSize = 0;
    }

    if (!Node)
    {
        goto BuildTrailingNull;
    }

    NextNode = Node;
    while (NextNode && NextNode != AcpiGbl_RootNode)
    {
        if (NextNode != Node)
        {
            do { if ((Length) < (PathSize)) { (FullPath)[(Length)] = (AML_DUAL_NAME_PREFIX); } (Length)++; } while (0);
        }

        ACPI_MOVE_32_TO_32 (Name, &NextNode->Name);
        DoNoTrailing = NoTrailing;
        for (i = 0; i < 4; i++)
        {
            c = Name[4-i-1];
            if (DoNoTrailing && c != '_')
            {
                DoNoTrailing = FALSE;
            }
            if (!DoNoTrailing)
            {
                do { if ((Length) < (PathSize)) { (FullPath)[(Length)] = (c); } (Length)++; } while (0);
            }
        }

        NextNode = NextNode->Parent;
    }

    do { if ((Length) < (PathSize)) { (FullPath)[(Length)] = (AML_ROOT_PREFIX); } (Length)++; } while (0);



    if (Length <= PathSize)
    {
        Left = FullPath;
        Right = FullPath+Length - 1;

        while (Left < Right)
        {
            c = *Left;
            *Left++ = *Right;
            *Right-- = c;
        }
    }



BuildTrailingNull:
    do { if ((Length) < (PathSize)) { (FullPath)[(Length)] = ('\0'); } (Length)++; } while (0);



    return_UINT32 (Length);
}
