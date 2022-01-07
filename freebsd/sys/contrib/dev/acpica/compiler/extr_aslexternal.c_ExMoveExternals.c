
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_9__ {scalar_t__ Integer; int String; } ;
struct TYPE_10__ {char* ExternalName; char* Namepath; scalar_t__ ParseOpcode; int CompileFlags; TYPE_3__* Parent; TYPE_3__* Next; TYPE_3__* Child; scalar_t__ LogicalLineNumber; scalar_t__ LineNumber; int AmlOpcode; TYPE_1__ Value; int AmlLength; int Node; } ;
struct TYPE_11__ {TYPE_2__ Asl; } ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;
typedef scalar_t__ ACPI_OBJECT_TYPE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_TYPE_METHOD ;
 int AML_IF_OP ;
 int AML_ZERO_OP ;
 int ASL_ERROR ;
 int ASL_MSG_COMPILER_INTERNAL ;
 char* AcpiNsGetNormalizedPathname (int ,int ) ;
 int AslError (int ,int ,TYPE_3__*,char*) ;
 TYPE_3__* AslGbl_ExternalsListHead ;
 int OP_AML_PACKAGE ;
 int OP_VISITED ;
 scalar_t__ PARSEOP_IF ;
 scalar_t__ PARSEOP_NAMESEG ;
 scalar_t__ PARSEOP_NAMESTRING ;
 int PARSEOP_ZERO ;
 int TRUE ;
 TYPE_3__* TrAllocateOp (int ) ;
 int UtInternalizeName (char*,int *) ;
 int UtSetParseOpName (TYPE_3__*) ;
 int strlen (int ) ;

__attribute__((used)) static void
ExMoveExternals (
    ACPI_PARSE_OBJECT *DefinitionBlockOp)
{
    ACPI_PARSE_OBJECT *ParentOp;
    ACPI_PARSE_OBJECT *ExternalOp;
    ACPI_PARSE_OBJECT *PredicateOp;
    ACPI_PARSE_OBJECT *NextOp;
    ACPI_PARSE_OBJECT *Prev;
    ACPI_PARSE_OBJECT *Next;
    char *ExternalName;
    ACPI_OBJECT_TYPE ObjType;
    ACPI_STATUS Status;
    UINT32 i;


    if (!AslGbl_ExternalsListHead)
    {
        return;
    }



    NextOp = AslGbl_ExternalsListHead;
    while (NextOp)
    {




        ExternalOp = NextOp->Asl.Child;



        ExternalName = AcpiNsGetNormalizedPathname (ExternalOp->Asl.Node, TRUE);
        ExternalOp->Asl.ExternalName = ExternalName;
        ExternalOp->Asl.Namepath = ExternalName;



        ExternalOp->Asl.LineNumber = 0;
        ExternalOp->Asl.LogicalLineNumber = 0;

        Next = ExternalOp->Asl.Child;
        Next->Asl.LineNumber = 0;
        Next->Asl.LogicalLineNumber = 0;

        if (Next->Asl.ParseOpcode == PARSEOP_NAMESEG)
        {
            Next->Asl.ParseOpcode = PARSEOP_NAMESTRING;
        }

        Next->Asl.ExternalName = ExternalName;
        Status = UtInternalizeName (ExternalName, &Next->Asl.Value.String);
        if (ACPI_FAILURE (Status))
        {
            AslError (ASL_ERROR, ASL_MSG_COMPILER_INTERNAL,
                Next, "Could not internalize namestring");
            return;
        }

        Next->Asl.AmlLength = strlen (Next->Asl.Value.String);

        Next = Next->Asl.Next;
        Next->Asl.LineNumber = 0;
        Next->Asl.LogicalLineNumber = 0;

        Next = Next->Asl.Next;
        Next->Asl.LineNumber = 0;
        Next->Asl.LogicalLineNumber = 0;

        Next = Next->Asl.Next;
        Next->Asl.LineNumber = 0;
        Next->Asl.LogicalLineNumber = 0;

        ParentOp = ExternalOp->Asl.Parent;
        Prev = Next = ParentOp->Asl.Child;



        while (Next != ExternalOp)
        {
            Prev = Next;
            Next = Next->Asl.Next;
        }



        if (Prev == ExternalOp)
        {


            ParentOp->Asl.Child = ExternalOp->Asl.Next;
        }

        Prev->Asl.Next = ExternalOp->Asl.Next;
        ExternalOp->Asl.Next = ((void*)0);
        ExternalOp->Asl.Parent = AslGbl_ExternalsListHead;



        if (NextOp->Asl.Next)
        {
            ExternalOp->Asl.Next = NextOp->Asl.Next->Asl.Child;
        }

        NextOp = NextOp->Asl.Next;
    }





    Prev = AslGbl_ExternalsListHead->Asl.Child;
    Next = Prev;
    while (Next)
    {
        ObjType = (ACPI_OBJECT_TYPE)
            Next->Asl.Child->Asl.Next->Asl.Value.Integer;

        if (ObjType == ACPI_TYPE_METHOD &&
            !(Next->Asl.CompileFlags & OP_VISITED))
        {
            if (Next == Prev)
            {
                AslGbl_ExternalsListHead->Asl.Child = Next->Asl.Next;
                Next->Asl.Next = ((void*)0);
                Prev = AslGbl_ExternalsListHead->Asl.Child;
                Next = Prev;
                continue;
            }
            else
            {
                Prev->Asl.Next = Next->Asl.Next;
                Next->Asl.Next = ((void*)0);
                Next = Prev->Asl.Next;
                continue;
            }
        }

        Prev = Next;
        Next = Next->Asl.Next;
    }



    if (!AslGbl_ExternalsListHead->Asl.Child)
    {
        return;
    }



    AslGbl_ExternalsListHead->Asl.ParseOpcode = PARSEOP_IF;
    AslGbl_ExternalsListHead->Asl.AmlOpcode = AML_IF_OP;
    AslGbl_ExternalsListHead->Asl.CompileFlags = OP_AML_PACKAGE;
    UtSetParseOpName (AslGbl_ExternalsListHead);



    PredicateOp = TrAllocateOp (PARSEOP_ZERO);
    PredicateOp->Asl.AmlOpcode = AML_ZERO_OP;

    PredicateOp->Asl.Parent = AslGbl_ExternalsListHead;
    PredicateOp->Asl.Child = ((void*)0);
    PredicateOp->Asl.Next = AslGbl_ExternalsListHead->Asl.Child;
    AslGbl_ExternalsListHead->Asl.Child = PredicateOp;



    AslGbl_ExternalsListHead->Asl.LineNumber = 0;
    AslGbl_ExternalsListHead->Asl.LogicalLineNumber = 0;

    PredicateOp->Asl.LineNumber = 0;
    PredicateOp->Asl.LogicalLineNumber = 0;



    Prev = DefinitionBlockOp->Asl.Child;
    Next = Prev;



    for (i = 0; i < 6; i++)
    {
        Prev = Next;
        Next = Prev->Asl.Next;
    }

    if (Next)
    {


        AslGbl_ExternalsListHead->Asl.Next = Next;
    }
    else
    {


        AslGbl_ExternalsListHead->Asl.Next = ((void*)0);
    }

    Prev->Asl.Next = AslGbl_ExternalsListHead;
    AslGbl_ExternalsListHead->Asl.Parent = Prev->Asl.Parent;
}
