
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int Integer; } ;
struct TYPE_8__ {scalar_t__ Flags; int * Object; int * Peer; int * Child; int * Parent; int Type; int DescriptorType; TYPE_1__ Name; } ;
struct TYPE_7__ {struct TYPE_7__* Next; } ;
typedef int FILE ;
typedef int ACPI_TABLE_HEADER ;
typedef int ACPI_STATUS ;
typedef int ACPI_OWNER_ID ;
typedef TYPE_2__ ACPI_COMMENT_ADDR_NODE ;


 int ACPI_DESC_TYPE_NAMED ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_ROOT_NAME ;
 int ACPI_TYPE_DEVICE ;
 int AE_OK ;
 int AcpiDmAddExternalListToNamespace () ;
 int AcpiDmCrossReferenceNamespace (int *,int *,int ) ;
 int AcpiDmDumpTree (int *) ;
 int AcpiDmFinishNamespaceLoad (int *,int *,int ) ;
 int AcpiDmGetUnresolvedExternalMethodCount () ;
 int AcpiFormatException (int ) ;
 TYPE_2__* AcpiGbl_CommentAddrListHead ;
 int * AcpiGbl_ParseOpRoot ;
 int * AcpiGbl_RootNode ;
 TYPE_4__ AcpiGbl_RootNodeStruct ;
 int AcpiNsDeleteNamespaceSubtree (int *) ;
 int AcpiNsRootInitialize () ;
 int AcpiOsFree (TYPE_2__*) ;
 int AcpiOsPrintf (char*,...) ;
 int AcpiPsDeleteParseTree (int *) ;
 int AdParseTable (int *,int *,int ,int ) ;
 scalar_t__ AslCompilerdebug ;
 int FALSE ;
 int NsDisplayNamespace () ;
 int NsSetupNamespaceListing (int *) ;
 int fprintf (int ,char*,int) ;
 int stderr ;

__attribute__((used)) static ACPI_STATUS
AdReparseOneTable (
    ACPI_TABLE_HEADER *Table,
    FILE *File,
    ACPI_OWNER_ID OwnerId)
{
    ACPI_STATUS Status;
    ACPI_COMMENT_ADDR_NODE *AddrListHead;


    fprintf (stderr,
        "\nFound %u external control methods, "
        "reparsing with new information\n",
        AcpiDmGetUnresolvedExternalMethodCount ());



    AcpiPsDeleteParseTree (AcpiGbl_ParseOpRoot);
    AcpiGbl_ParseOpRoot = ((void*)0);
    AcpiNsDeleteNamespaceSubtree (AcpiGbl_RootNode);

    AcpiGbl_RootNode = ((void*)0);
    AcpiGbl_RootNodeStruct.Name.Integer = ACPI_ROOT_NAME;
    AcpiGbl_RootNodeStruct.DescriptorType = ACPI_DESC_TYPE_NAMED;
    AcpiGbl_RootNodeStruct.Type = ACPI_TYPE_DEVICE;
    AcpiGbl_RootNodeStruct.Parent = ((void*)0);
    AcpiGbl_RootNodeStruct.Child = ((void*)0);
    AcpiGbl_RootNodeStruct.Peer = ((void*)0);
    AcpiGbl_RootNodeStruct.Object = ((void*)0);
    AcpiGbl_RootNodeStruct.Flags = 0;

    Status = AcpiNsRootInitialize ();
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }



    AcpiDmAddExternalListToNamespace ();



    while (AcpiGbl_CommentAddrListHead)
    {
        AddrListHead= AcpiGbl_CommentAddrListHead;
        AcpiGbl_CommentAddrListHead = AcpiGbl_CommentAddrListHead->Next;
        AcpiOsFree(AddrListHead);
    }



    Status = AdParseTable (Table, ((void*)0), FALSE, FALSE);
    if (ACPI_FAILURE (Status))
    {
        AcpiOsPrintf ("Could not parse ACPI tables, %s\n",
            AcpiFormatException (Status));
        return (Status);
    }



    AcpiDmFinishNamespaceLoad (AcpiGbl_ParseOpRoot,
        AcpiGbl_RootNode, OwnerId);

    AcpiDmCrossReferenceNamespace (AcpiGbl_ParseOpRoot,
        AcpiGbl_RootNode, OwnerId);



    if (AslCompilerdebug)
    {
        AcpiOsPrintf ("/**** After second load and resource conversion\n");
        if (File)
        {
            NsSetupNamespaceListing (File);
            NsDisplayNamespace ();
        }

        AcpiOsPrintf ("*****/\n");
        AcpiDmDumpTree (AcpiGbl_ParseOpRoot);
    }

    return (AE_OK);
}
