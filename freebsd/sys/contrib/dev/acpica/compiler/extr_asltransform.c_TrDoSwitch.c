
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_18__ ;


typedef int UINT64 ;
typedef int UINT32 ;
typedef size_t UINT16 ;
struct TYPE_21__ {scalar_t__ ParseOpcode; TYPE_2__* Parent; TYPE_2__* Next; TYPE_2__* Child; int CompileFlags; int ParseOpName; } ;
struct TYPE_22__ {TYPE_1__ Asl; } ;
struct TYPE_20__ {int AcpiBtype; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;





 scalar_t__ ACPI_TO_INTEGER (char*) ;
 int ASL_ERROR ;
 int ASL_MSG_MULTIPLE_DEFAULT ;
 int ASL_MSG_NO_CASES ;
 int ASL_MSG_SERIALIZED ;
 int ASL_MSG_SWITCH_TYPE ;
 scalar_t__ ASL_PARSE_OPCODE_BASE ;
 int ASL_REMARK ;
 int ASL_WARNING ;
 int AcpiOsPrintf (char*,int ,scalar_t__) ;
 int AslError (int ,int ,TYPE_2__*,char*) ;
 int AslGbl_TempCount ;
 TYPE_18__* AslKeywordMapping ;
 int OP_COMPILER_EMITTED ;
 int OP_IS_NAME_DECLARATION ;
 int PARSEOP_BREAK ;
 int PARSEOP_BUFFER ;
 scalar_t__ PARSEOP_CASE ;
 scalar_t__ PARSEOP_DEFAULT ;
 int PARSEOP_DEFAULT_ARG ;
 scalar_t__ PARSEOP_DEFINITION_BLOCK ;
 int PARSEOP_ELSE ;
 int PARSEOP_IF ;
 int PARSEOP_LEQUAL ;
 int PARSEOP_LNOT ;
 int PARSEOP_MATCH ;
 int PARSEOP_MATCHTYPE_MEQ ;
 int PARSEOP_MATCHTYPE_MTR ;
 scalar_t__ PARSEOP_METHOD ;
 int PARSEOP_NAME ;
 int PARSEOP_NAMESEG ;
 int PARSEOP_NAMESTRING ;
 int PARSEOP_ONE ;
 int PARSEOP_ONES ;
 scalar_t__ PARSEOP_PACKAGE ;
 scalar_t__ PARSEOP_SERIALIZERULE_SERIAL ;
 int PARSEOP_STORE ;
 int PARSEOP_STRING_LITERAL ;
 scalar_t__ PARSEOP_VAR_PACKAGE ;
 int PARSEOP_WHILE ;
 int PARSEOP_ZERO ;
 char* TrAmlGetNextTempName (TYPE_2__*,int *) ;
 int TrAmlInitLineNumbers (TYPE_2__*,TYPE_2__*) ;
 int TrAmlInitNode (TYPE_2__*,int ) ;
 int TrAmlInsertPeer (TYPE_2__*,TYPE_2__*) ;
 int TrAmlSetSubtreeParent (TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* TrCreateLeafOp (int ) ;
 TYPE_2__* TrCreateValuedLeafOp (int ,int ) ;
 int TrLinkOpChildren (TYPE_2__*,int,TYPE_2__*) ;
 int TrLinkPeerOp (TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static void
TrDoSwitch (
    ACPI_PARSE_OBJECT *StartNode)
{
    ACPI_PARSE_OBJECT *Next;
    ACPI_PARSE_OBJECT *CaseOp = ((void*)0);
    ACPI_PARSE_OBJECT *CaseBlock = ((void*)0);
    ACPI_PARSE_OBJECT *DefaultOp = ((void*)0);
    ACPI_PARSE_OBJECT *CurrentParentNode;
    ACPI_PARSE_OBJECT *Conditional = ((void*)0);
    ACPI_PARSE_OBJECT *Predicate;
    ACPI_PARSE_OBJECT *Peer;
    ACPI_PARSE_OBJECT *NewOp;
    ACPI_PARSE_OBJECT *NewOp2;
    ACPI_PARSE_OBJECT *MethodOp;
    ACPI_PARSE_OBJECT *StoreOp;
    ACPI_PARSE_OBJECT *BreakOp;
    ACPI_PARSE_OBJECT *BufferOp;
    char *PredicateValueName;
    UINT16 Index;
    UINT32 Btype;




    CurrentParentNode = StartNode;



    PredicateValueName = TrAmlGetNextTempName (StartNode, &AslGbl_TempCount);
    if (!PredicateValueName)
    {
        return;
    }



    Next = StartNode->Asl.Child;





    Index = (UINT16) (Next->Asl.ParseOpcode - ASL_PARSE_OPCODE_BASE);
    Btype = AslKeywordMapping[Index].AcpiBtype;
    if ((Btype != 129) &&
        (Btype != 128) &&
        (Btype != 130))
    {
        AslError (ASL_WARNING, ASL_MSG_SWITCH_TYPE, Next, ((void*)0));
        Btype = 129;
    }



    Peer = Next->Asl.Next;
    while (Peer)
    {
        Next = Peer;
        Peer = Next->Asl.Next;

        if (Next->Asl.ParseOpcode == PARSEOP_CASE)
        {
            if (CaseOp)
            {


                NewOp = TrCreateLeafOp (PARSEOP_ELSE);
                NewOp->Asl.Parent = Conditional->Asl.Parent;
                TrAmlInitLineNumbers (NewOp, NewOp->Asl.Parent);



                TrAmlInsertPeer (Conditional, NewOp);
                CurrentParentNode = NewOp;
            }

            CaseOp = Next;
            Conditional = CaseOp;
            CaseBlock = CaseOp->Asl.Child->Asl.Next;
            Conditional->Asl.Child->Asl.Next = ((void*)0);
            Predicate = CaseOp->Asl.Child;

            if ((Predicate->Asl.ParseOpcode == PARSEOP_PACKAGE) ||
                (Predicate->Asl.ParseOpcode == PARSEOP_VAR_PACKAGE))
            {






                NewOp2 = TrCreateLeafOp (PARSEOP_MATCHTYPE_MEQ);
                Predicate->Asl.Next = NewOp2;
                TrAmlInitLineNumbers (NewOp2, Conditional);

                NewOp = NewOp2;
                NewOp2 = TrCreateValuedLeafOp (PARSEOP_NAMESTRING,
                                        (UINT64) ACPI_TO_INTEGER (PredicateValueName));
                NewOp->Asl.Next = NewOp2;
                TrAmlInitLineNumbers (NewOp2, Predicate);

                NewOp = NewOp2;
                NewOp2 = TrCreateLeafOp (PARSEOP_MATCHTYPE_MTR);
                NewOp->Asl.Next = NewOp2;
                TrAmlInitLineNumbers (NewOp2, Predicate);

                NewOp = NewOp2;
                NewOp2 = TrCreateLeafOp (PARSEOP_ZERO);
                NewOp->Asl.Next = NewOp2;
                TrAmlInitLineNumbers (NewOp2, Predicate);

                NewOp = NewOp2;
                NewOp2 = TrCreateLeafOp (PARSEOP_ZERO);
                NewOp->Asl.Next = NewOp2;
                TrAmlInitLineNumbers (NewOp2, Predicate);

                NewOp2 = TrCreateLeafOp (PARSEOP_MATCH);
                NewOp2->Asl.Child = Predicate;
                TrAmlInitLineNumbers (NewOp2, Conditional);
                TrAmlSetSubtreeParent (Predicate, NewOp2);

                NewOp = NewOp2;
                NewOp2 = TrCreateLeafOp (PARSEOP_ONES);
                NewOp->Asl.Next = NewOp2;
                TrAmlInitLineNumbers (NewOp2, Conditional);

                NewOp2 = TrCreateLeafOp (PARSEOP_LEQUAL);
                NewOp2->Asl.Child = NewOp;
                NewOp->Asl.Parent = NewOp2;
                TrAmlInitLineNumbers (NewOp2, Conditional);
                TrAmlSetSubtreeParent (NewOp, NewOp2);

                NewOp = NewOp2;
                NewOp2 = TrCreateLeafOp (PARSEOP_LNOT);
                NewOp2->Asl.Child = NewOp;
                NewOp2->Asl.Parent = Conditional;
                NewOp->Asl.Parent = NewOp2;
                TrAmlInitLineNumbers (NewOp2, Conditional);

                Conditional->Asl.Child = NewOp2;
                NewOp2->Asl.Next = CaseBlock;
            }
            else
            {
                NewOp = TrCreateValuedLeafOp (PARSEOP_NAMESTRING,
                    (UINT64) ACPI_TO_INTEGER (PredicateValueName));
                NewOp->Asl.Next = Predicate;
                TrAmlInitLineNumbers (NewOp, Predicate);

                NewOp2 = TrCreateLeafOp (PARSEOP_LEQUAL);
                NewOp2->Asl.Parent = Conditional;
                NewOp2->Asl.Child = NewOp;
                TrAmlInitLineNumbers (NewOp2, Conditional);

                TrAmlSetSubtreeParent (NewOp, NewOp2);

                Predicate = NewOp2;
                Predicate->Asl.Next = CaseBlock;

                TrAmlSetSubtreeParent (Predicate, Conditional);
                Conditional->Asl.Child = Predicate;
            }



            TrAmlInitNode (Conditional, PARSEOP_IF);





            if (CurrentParentNode == StartNode)
            {
                Conditional->Asl.Next = ((void*)0);
            }
            else
            {




                CurrentParentNode->Asl.Child = Conditional;
                Conditional->Asl.Parent = CurrentParentNode;
                Conditional->Asl.Next = ((void*)0);
            }
        }
        else if (Next->Asl.ParseOpcode == PARSEOP_DEFAULT)
        {
            if (DefaultOp)
            {




                AslError (ASL_ERROR, ASL_MSG_MULTIPLE_DEFAULT, Next, ((void*)0));
            }
            else
            {


                DefaultOp = Next;
            }
        }
        else
        {


            AcpiOsPrintf ("Unknown parse opcode for switch statement: %s (%u)\n",
                Next->Asl.ParseOpName, Next->Asl.ParseOpcode);
        }
    }



    if (DefaultOp)
    {


        if (CaseOp)
        {


            TrAmlInitNode (DefaultOp, PARSEOP_ELSE);
            DefaultOp->Asl.Parent = Conditional->Asl.Parent;



            TrAmlInsertPeer (Conditional, DefaultOp);
        }
    }

    if (!CaseOp)
    {
        AslError (ASL_ERROR, ASL_MSG_NO_CASES, StartNode, ((void*)0));
    }
    Predicate = StartNode->Asl.Child;
    NewOp = TrCreateLeafOp (PARSEOP_NAME);
    TrAmlInitLineNumbers (NewOp, StartNode);



    Next = StartNode;
    while ((Next->Asl.ParseOpcode != PARSEOP_METHOD) &&
           (Next->Asl.ParseOpcode != PARSEOP_DEFINITION_BLOCK))
    {
        Next = Next->Asl.Parent;
    }
    MethodOp = Next;

    NewOp->Asl.CompileFlags |= OP_COMPILER_EMITTED;
    NewOp->Asl.Parent = Next;



    Next = Next->Asl.Child;
    Next = Next->Asl.Next;
    Next = Next->Asl.Next;







    if (Next->Asl.ParseOpcode != PARSEOP_SERIALIZERULE_SERIAL)
    {
        AslError (ASL_REMARK, ASL_MSG_SERIALIZED, MethodOp,
            "Due to use of Switch operator");
        Next->Asl.ParseOpcode = PARSEOP_SERIALIZERULE_SERIAL;
    }

    Next = Next->Asl.Next;
    Next = Next->Asl.Next;
    Next = Next->Asl.Next;

    TrAmlInsertPeer (Next, NewOp);
    TrAmlInitLineNumbers (NewOp, Next);



    NewOp2 = TrCreateValuedLeafOp (PARSEOP_NAMESEG,
        (UINT64) ACPI_TO_INTEGER (PredicateValueName));
    TrAmlInitLineNumbers (NewOp2, NewOp);
    NewOp2->Asl.CompileFlags |= OP_IS_NAME_DECLARATION;
    NewOp->Asl.Child = NewOp2;



    switch (Btype)
    {
    case 129:

        NewOp2->Asl.Next = TrCreateValuedLeafOp (PARSEOP_ZERO,
            (UINT64) 0);
        TrAmlInitLineNumbers (NewOp2->Asl.Next, NewOp);
        break;

    case 128:

        NewOp2->Asl.Next = TrCreateValuedLeafOp (PARSEOP_STRING_LITERAL,
            (UINT64) ACPI_TO_INTEGER (""));
        TrAmlInitLineNumbers (NewOp2->Asl.Next, NewOp);
        break;

    case 130:

        (void) TrLinkPeerOp (NewOp2, TrCreateValuedLeafOp (PARSEOP_BUFFER,
            (UINT64) 0));
        Next = NewOp2->Asl.Next;
        TrAmlInitLineNumbers (Next, NewOp2);

        (void) TrLinkOpChildren (Next, 1, TrCreateValuedLeafOp (PARSEOP_ZERO,
            (UINT64) 1));
        TrAmlInitLineNumbers (Next->Asl.Child, Next);

        BufferOp = TrCreateValuedLeafOp (PARSEOP_DEFAULT_ARG, (UINT64) 0);
        TrAmlInitLineNumbers (BufferOp, Next->Asl.Child);
        (void) TrLinkPeerOp (Next->Asl.Child, BufferOp);

        TrAmlSetSubtreeParent (Next->Asl.Child, Next);
        break;

    default:

        break;
    }

    TrAmlSetSubtreeParent (NewOp2, NewOp);







    TrAmlInitNode (StartNode, PARSEOP_WHILE);
    NewOp = TrCreateLeafOp (PARSEOP_ONE);
    TrAmlInitLineNumbers (NewOp, StartNode);
    NewOp->Asl.Next = Predicate->Asl.Next;
    NewOp->Asl.Parent = StartNode;
    StartNode->Asl.Child = NewOp;



    StoreOp = TrCreateLeafOp (PARSEOP_STORE);
    TrAmlInitLineNumbers (StoreOp, NewOp);
    StoreOp->Asl.Parent = StartNode;
    TrAmlInsertPeer (NewOp, StoreOp);



    StoreOp->Asl.Child = Predicate;
    Predicate->Asl.Parent = StoreOp;

    NewOp = TrCreateValuedLeafOp (PARSEOP_NAMESEG,
        (UINT64) ACPI_TO_INTEGER (PredicateValueName));
    TrAmlInitLineNumbers (NewOp, StoreOp);
    NewOp->Asl.Parent = StoreOp;
    Predicate->Asl.Next = NewOp;



    Conditional = StartNode->Asl.Child;
    while (Conditional->Asl.Next)
    {
        Conditional = Conditional->Asl.Next;
    }

    BreakOp = TrCreateLeafOp (PARSEOP_BREAK);
    TrAmlInitLineNumbers (BreakOp, NewOp);
    BreakOp->Asl.Parent = StartNode;
    TrAmlInsertPeer (Conditional, BreakOp);
}
