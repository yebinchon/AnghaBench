
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int Filename; TYPE_2__* Parent; } ;
struct TYPE_7__ {int CvParentFilename; int CvFilename; scalar_t__ Aml; } ;
struct TYPE_9__ {TYPE_1__ Common; } ;
struct TYPE_8__ {int Filename; } ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;
typedef TYPE_4__ ACPI_FILE_NODE ;


 int AcpiGbl_FileTreeRoot ;
 TYPE_4__* CvFileAddressLookup (char*,int ) ;

void
CvLabelFileNode(
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_FILE_NODE *Node;


    if (!Op)
    {
        return;
    }

    Node = CvFileAddressLookup ((char *)
        Op->Common.Aml, AcpiGbl_FileTreeRoot);
    if (!Node)
    {
       return;
    }

    Op->Common.CvFilename = Node->Filename;
    if (Node->Parent)
    {
        Op->Common.CvParentFilename = Node->Parent->Filename;
    }
    else
    {
        Op->Common.CvParentFilename = Node->Filename;
    }
}
