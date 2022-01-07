
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT16 ;
struct TYPE_6__ {scalar_t__ Integer; int String; } ;
struct TYPE_7__ {int CompileFlags; TYPE_1__ Value; TYPE_3__* Next; TYPE_3__* Child; int AmlLength; int Node; } ;
struct TYPE_8__ {TYPE_2__ Asl; } ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (char*) ;
 int ASL_ERROR ;
 int ASL_MSG_COMPILER_INTERNAL ;
 char* AcpiNsGetNormalizedPathname (int ,int ) ;
 int AslError (int ,int ,int *,char*) ;
 TYPE_3__* AslGbl_ExternalsListHead ;
 int OP_VISITED ;
 int TRUE ;
 int UtInternalizeName (char*,int *) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (int ) ;

__attribute__((used)) static void
ExInsertArgCount (
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_PARSE_OBJECT *Next;
    ACPI_PARSE_OBJECT *NameOp;
    ACPI_PARSE_OBJECT *Child;
    ACPI_PARSE_OBJECT *ArgCountOp;
    char * ExternalName;
    char * CallName;
    UINT16 ArgCount = 0;
    ACPI_STATUS Status;


    CallName = AcpiNsGetNormalizedPathname (Op->Asl.Node, TRUE);

    Next = AslGbl_ExternalsListHead;
    while (Next)
    {
        ArgCount = 0;



        if (Next->Asl.Child->Asl.CompileFlags & OP_VISITED)
        {
            Next = Next->Asl.Next;
            continue;
        }

        NameOp = Next->Asl.Child->Asl.Child;
        ExternalName = AcpiNsGetNormalizedPathname (NameOp->Asl.Node, TRUE);

        if (strcmp (CallName, ExternalName))
        {
            ACPI_FREE (ExternalName);
            Next = Next->Asl.Next;
            continue;
        }

        Next->Asl.Child->Asl.CompileFlags |= OP_VISITED;





        Status = UtInternalizeName (ExternalName,
            &NameOp->Asl.Value.String);

        ACPI_FREE (ExternalName);
        if (ACPI_FAILURE (Status))
        {
            AslError (ASL_ERROR, ASL_MSG_COMPILER_INTERNAL,
                ((void*)0), "- Could not Internalize External");
            break;
        }

        NameOp->Asl.AmlLength = strlen (NameOp->Asl.Value.String);



        Child = Op->Asl.Child;
        while (Child)
        {
            ArgCount++;
            Child = Child->Asl.Next;
        }



        ArgCountOp = Next->Asl.Child->Asl.Child->Asl.Next->Asl.Next;
        ArgCountOp->Asl.Value.Integer = ArgCount;
        break;
    }

    ACPI_FREE (CallName);
}
