
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {size_t Length; scalar_t__ Pointer; } ;
struct TYPE_7__ {int * Node; } ;
struct TYPE_8__ {TYPE_1__ Scope; } ;
typedef int ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef int ACPI_PARSE_OBJECT ;
typedef int ACPI_NAMESPACE_NODE ;
typedef TYPE_2__ ACPI_GENERIC_STATE ;
typedef TYPE_3__ ACPI_BUFFER ;


 int ACPI_DB_OPTIMIZATIONS ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_NAME (int (*) (int *,int *,int *,int *,TYPE_3__*,char**)) ;
 int ACPI_IMODE_EXECUTE ;
 size_t ACPI_NAMESEG_SIZE ;
 int ACPI_NS_DONT_OPEN_SCOPE ;
 int ACPI_NS_SEARCH_PARENT ;
 int ACPI_TYPE_ANY ;
 int AE_NOT_FOUND ;
 int AE_OK ;
 int ASL_MSG_SINGLE_NAME_OPTIMIZATION ;
 int ASL_OPTIMIZATION ;
 int AcpiNsLookup (TYPE_2__*,char*,int ,int ,int,int *,int **) ;
 int AslError (int ,int ,int *,char*) ;
 char* UtLocalCacheCalloc (size_t) ;
 int strcpy (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static ACPI_STATUS
OptSearchToRoot (
    ACPI_PARSE_OBJECT *Op,
    ACPI_WALK_STATE *WalkState,
    ACPI_NAMESPACE_NODE *CurrentNode,
    ACPI_NAMESPACE_NODE *TargetNode,
    ACPI_BUFFER *TargetPath,
    char **NewPath)
{
    ACPI_NAMESPACE_NODE *Node;
    ACPI_GENERIC_STATE ScopeInfo;
    ACPI_STATUS Status;
    char *Path;


    ACPI_FUNCTION_NAME (OptSearchToRoot);
    Path = &(((char *) TargetPath->Pointer)[
        TargetPath->Length - ACPI_NAMESEG_SIZE]);
    ScopeInfo.Scope.Node = CurrentNode;



    Status = AcpiNsLookup (&ScopeInfo, Path, ACPI_TYPE_ANY, ACPI_IMODE_EXECUTE,
        ACPI_NS_SEARCH_PARENT | ACPI_NS_DONT_OPEN_SCOPE,
        WalkState, &(Node));
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }






    if (Node != TargetNode)
    {




        return (AE_NOT_FOUND);
    }



    ACPI_DEBUG_PRINT_RAW ((ACPI_DB_OPTIMIZATIONS,
        "NAMESEG:   %-24s", Path));



    *NewPath = UtLocalCacheCalloc (ACPI_NAMESEG_SIZE + 1);
    strcpy (*NewPath, Path);

    if (strncmp (*NewPath, "_T_", 3))
    {
        AslError (ASL_OPTIMIZATION, ASL_MSG_SINGLE_NAME_OPTIMIZATION,
            Op, *NewPath);
    }

    return (AE_OK);
}
