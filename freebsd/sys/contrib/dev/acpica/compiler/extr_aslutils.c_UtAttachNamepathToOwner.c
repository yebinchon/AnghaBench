
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int String; } ;
struct TYPE_8__ {int Namepath; TYPE_1__ Value; int ExternalName; void* ParentMethod; } ;
struct TYPE_9__ {TYPE_2__ Asl; } ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int UtAttachNameseg (TYPE_3__*,int ) ;
 int UtInternalizeName (int ,int *) ;

void
UtAttachNamepathToOwner (
    ACPI_PARSE_OBJECT *Op,
    ACPI_PARSE_OBJECT *NameOp)
{
    ACPI_STATUS Status;




    Op->Asl.ExternalName = NameOp->Asl.Value.String;



    Op->Asl.ParentMethod = (void *) NameOp;



    UtAttachNameseg (Op, Op->Asl.ExternalName);



    Status = UtInternalizeName (NameOp->Asl.Value.String, &Op->Asl.Namepath);
    if (ACPI_FAILURE (Status))
    {

    }
}
