#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_18__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT64 ;
typedef  int UINT32 ;
typedef  size_t UINT16 ;
struct TYPE_21__ {scalar_t__ ParseOpcode; TYPE_2__* Parent; TYPE_2__* Next; TYPE_2__* Child; int /*<<< orphan*/  CompileFlags; int /*<<< orphan*/  ParseOpName; } ;
struct TYPE_22__ {TYPE_1__ Asl; } ;
struct TYPE_20__ {int AcpiBtype; } ;
typedef  TYPE_2__ ACPI_PARSE_OBJECT ;

/* Variables and functions */
#define  ACPI_BTYPE_BUFFER 130 
#define  ACPI_BTYPE_INTEGER 129 
#define  ACPI_BTYPE_STRING 128 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  ASL_ERROR ; 
 int /*<<< orphan*/  ASL_MSG_MULTIPLE_DEFAULT ; 
 int /*<<< orphan*/  ASL_MSG_NO_CASES ; 
 int /*<<< orphan*/  ASL_MSG_SERIALIZED ; 
 int /*<<< orphan*/  ASL_MSG_SWITCH_TYPE ; 
 scalar_t__ ASL_PARSE_OPCODE_BASE ; 
 int /*<<< orphan*/  ASL_REMARK ; 
 int /*<<< orphan*/  ASL_WARNING ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  AslGbl_TempCount ; 
 TYPE_18__* AslKeywordMapping ; 
 int /*<<< orphan*/  OP_COMPILER_EMITTED ; 
 int /*<<< orphan*/  OP_IS_NAME_DECLARATION ; 
 int /*<<< orphan*/  PARSEOP_BREAK ; 
 int /*<<< orphan*/  PARSEOP_BUFFER ; 
 scalar_t__ PARSEOP_CASE ; 
 scalar_t__ PARSEOP_DEFAULT ; 
 int /*<<< orphan*/  PARSEOP_DEFAULT_ARG ; 
 scalar_t__ PARSEOP_DEFINITION_BLOCK ; 
 int /*<<< orphan*/  PARSEOP_ELSE ; 
 int /*<<< orphan*/  PARSEOP_IF ; 
 int /*<<< orphan*/  PARSEOP_LEQUAL ; 
 int /*<<< orphan*/  PARSEOP_LNOT ; 
 int /*<<< orphan*/  PARSEOP_MATCH ; 
 int /*<<< orphan*/  PARSEOP_MATCHTYPE_MEQ ; 
 int /*<<< orphan*/  PARSEOP_MATCHTYPE_MTR ; 
 scalar_t__ PARSEOP_METHOD ; 
 int /*<<< orphan*/  PARSEOP_NAME ; 
 int /*<<< orphan*/  PARSEOP_NAMESEG ; 
 int /*<<< orphan*/  PARSEOP_NAMESTRING ; 
 int /*<<< orphan*/  PARSEOP_ONE ; 
 int /*<<< orphan*/  PARSEOP_ONES ; 
 scalar_t__ PARSEOP_PACKAGE ; 
 scalar_t__ PARSEOP_SERIALIZERULE_SERIAL ; 
 int /*<<< orphan*/  PARSEOP_STORE ; 
 int /*<<< orphan*/  PARSEOP_STRING_LITERAL ; 
 scalar_t__ PARSEOP_VAR_PACKAGE ; 
 int /*<<< orphan*/  PARSEOP_WHILE ; 
 int /*<<< orphan*/  PARSEOP_ZERO ; 
 char* FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_2__*) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_2__*) ; 

__attribute__((used)) static void
FUNC12 (
    ACPI_PARSE_OBJECT       *StartNode)
{
    ACPI_PARSE_OBJECT       *Next;
    ACPI_PARSE_OBJECT       *CaseOp = NULL;
    ACPI_PARSE_OBJECT       *CaseBlock = NULL;
    ACPI_PARSE_OBJECT       *DefaultOp = NULL;
    ACPI_PARSE_OBJECT       *CurrentParentNode;
    ACPI_PARSE_OBJECT       *Conditional = NULL;
    ACPI_PARSE_OBJECT       *Predicate;
    ACPI_PARSE_OBJECT       *Peer;
    ACPI_PARSE_OBJECT       *NewOp;
    ACPI_PARSE_OBJECT       *NewOp2;
    ACPI_PARSE_OBJECT       *MethodOp;
    ACPI_PARSE_OBJECT       *StoreOp;
    ACPI_PARSE_OBJECT       *BreakOp;
    ACPI_PARSE_OBJECT       *BufferOp;
    char                    *PredicateValueName;
    UINT16                  Index;
    UINT32                  Btype;


    /* Start node is the Switch() node */

    CurrentParentNode  = StartNode;

    /* Create a new temp name of the form _T_x */

    PredicateValueName = FUNC3 (StartNode, &AslGbl_TempCount);
    if (!PredicateValueName)
    {
        return;
    }

    /* First child is the Switch() predicate */

    Next = StartNode->Asl.Child;

    /*
     * Examine the return type of the Switch Value -
     * must be Integer/Buffer/String
     */
    Index = (UINT16) (Next->Asl.ParseOpcode - ASL_PARSE_OPCODE_BASE);
    Btype = AslKeywordMapping[Index].AcpiBtype;
    if ((Btype != ACPI_BTYPE_INTEGER) &&
        (Btype != ACPI_BTYPE_STRING)  &&
        (Btype != ACPI_BTYPE_BUFFER))
    {
        FUNC2 (ASL_WARNING, ASL_MSG_SWITCH_TYPE, Next, NULL);
        Btype = ACPI_BTYPE_INTEGER;
    }

    /* CASE statements start at next child */

    Peer = Next->Asl.Next;
    while (Peer)
    {
        Next = Peer;
        Peer = Next->Asl.Next;

        if (Next->Asl.ParseOpcode == PARSEOP_CASE)
        {
            if (CaseOp)
            {
                /* Add an ELSE to complete the previous CASE */

                NewOp = FUNC8 (PARSEOP_ELSE);
                NewOp->Asl.Parent = Conditional->Asl.Parent;
                FUNC4 (NewOp, NewOp->Asl.Parent);

                /* Link ELSE node as a peer to the previous IF */

                FUNC6 (Conditional, NewOp);
                CurrentParentNode = NewOp;
            }

            CaseOp = Next;
            Conditional = CaseOp;
            CaseBlock = CaseOp->Asl.Child->Asl.Next;
            Conditional->Asl.Child->Asl.Next = NULL;
            Predicate = CaseOp->Asl.Child;

            if ((Predicate->Asl.ParseOpcode == PARSEOP_PACKAGE) ||
                (Predicate->Asl.ParseOpcode == PARSEOP_VAR_PACKAGE))
            {
                /*
                 * Convert the package declaration to this form:
                 *
                 * If (LNotEqual (Match (Package(<size>){<data>},
                 *                       MEQ, _T_x, MTR, Zero, Zero), Ones))
                 */
                NewOp2              = FUNC8 (PARSEOP_MATCHTYPE_MEQ);
                Predicate->Asl.Next = NewOp2;
                FUNC4 (NewOp2, Conditional);

                NewOp               = NewOp2;
                NewOp2              = FUNC9 (PARSEOP_NAMESTRING,
                                        (UINT64) FUNC0 (PredicateValueName));
                NewOp->Asl.Next     = NewOp2;
                FUNC4 (NewOp2, Predicate);

                NewOp               = NewOp2;
                NewOp2              = FUNC8 (PARSEOP_MATCHTYPE_MTR);
                NewOp->Asl.Next     = NewOp2;
                FUNC4 (NewOp2, Predicate);

                NewOp               = NewOp2;
                NewOp2              = FUNC8 (PARSEOP_ZERO);
                NewOp->Asl.Next     = NewOp2;
                FUNC4 (NewOp2, Predicate);

                NewOp               = NewOp2;
                NewOp2              = FUNC8 (PARSEOP_ZERO);
                NewOp->Asl.Next     = NewOp2;
                FUNC4 (NewOp2, Predicate);

                NewOp2              = FUNC8 (PARSEOP_MATCH);
                NewOp2->Asl.Child   = Predicate;  /* PARSEOP_PACKAGE */
                FUNC4 (NewOp2, Conditional);
                FUNC7 (Predicate, NewOp2);

                NewOp               = NewOp2;
                NewOp2              = FUNC8 (PARSEOP_ONES);
                NewOp->Asl.Next     = NewOp2;
                FUNC4 (NewOp2, Conditional);

                NewOp2              = FUNC8 (PARSEOP_LEQUAL);
                NewOp2->Asl.Child   = NewOp;
                NewOp->Asl.Parent   = NewOp2;
                FUNC4 (NewOp2, Conditional);
                FUNC7 (NewOp, NewOp2);

                NewOp               = NewOp2;
                NewOp2              = FUNC8 (PARSEOP_LNOT);
                NewOp2->Asl.Child   = NewOp;
                NewOp2->Asl.Parent  = Conditional;
                NewOp->Asl.Parent   = NewOp2;
                FUNC4 (NewOp2, Conditional);

                Conditional->Asl.Child = NewOp2;
                NewOp2->Asl.Next = CaseBlock;
            }
            else
            {
                /*
                 * Integer and Buffer case.
                 *
                 * Change CaseOp() to:  If (LEqual (SwitchValue, CaseValue)) {...}
                 * Note: SwitchValue is first to allow the CaseValue to be implicitly
                 * converted to the type of SwitchValue if necessary.
                 *
                 * CaseOp->Child is the case value
                 * CaseOp->Child->Peer is the beginning of the case block
                 */
                NewOp = FUNC9 (PARSEOP_NAMESTRING,
                    (UINT64) FUNC0 (PredicateValueName));
                NewOp->Asl.Next = Predicate;
                FUNC4 (NewOp, Predicate);

                NewOp2              = FUNC8 (PARSEOP_LEQUAL);
                NewOp2->Asl.Parent  = Conditional;
                NewOp2->Asl.Child   = NewOp;
                FUNC4 (NewOp2, Conditional);

                FUNC7 (NewOp, NewOp2);

                Predicate           = NewOp2;
                Predicate->Asl.Next = CaseBlock;

                FUNC7 (Predicate, Conditional);
                Conditional->Asl.Child = Predicate;
            }

            /* Reinitialize the CASE node to an IF node */

            FUNC5 (Conditional, PARSEOP_IF);

            /*
             * The first CASE(IF) is not nested under an ELSE.
             * All other CASEs are children of a parent ELSE.
             */
            if (CurrentParentNode == StartNode)
            {
                Conditional->Asl.Next = NULL;
            }
            else
            {
                /*
                 * The IF is a child of previous IF/ELSE. It
                 * is therefore without peer.
                 */
                CurrentParentNode->Asl.Child = Conditional;
                Conditional->Asl.Parent      = CurrentParentNode;
                Conditional->Asl.Next        = NULL;
            }
        }
        else if (Next->Asl.ParseOpcode == PARSEOP_DEFAULT)
        {
            if (DefaultOp)
            {
                /*
                 * More than one Default
                 * (Parser does not catch this, must check here)
                 */
                FUNC2 (ASL_ERROR, ASL_MSG_MULTIPLE_DEFAULT, Next, NULL);
            }
            else
            {
                /* Save the DEFAULT node for later, after CASEs */

                DefaultOp = Next;
            }
        }
        else
        {
            /* Unknown peer opcode */

            FUNC1 ("Unknown parse opcode for switch statement: %s (%u)\n",
                Next->Asl.ParseOpName, Next->Asl.ParseOpcode);
        }
    }

    /* Add the default case at the end of the if/else construct */

    if (DefaultOp)
    {
        /* If no CASE statements, this is an error - see below */

        if (CaseOp)
        {
            /* Convert the DEFAULT node to an ELSE */

            FUNC5 (DefaultOp, PARSEOP_ELSE);
            DefaultOp->Asl.Parent = Conditional->Asl.Parent;

            /* Link ELSE node as a peer to the previous IF */

            FUNC6 (Conditional, DefaultOp);
        }
    }

    if (!CaseOp)
    {
        FUNC2 (ASL_ERROR, ASL_MSG_NO_CASES, StartNode, NULL);
    }


    /*
     * Create a Name(_T_x, ...) statement. This statement must appear at the
     * method level, in case a loop surrounds the switch statement and could
     * cause the name to be created twice (error).
     */

    /* Create the Name node */

    Predicate = StartNode->Asl.Child;
    NewOp = FUNC8 (PARSEOP_NAME);
    FUNC4 (NewOp, StartNode);

    /* Find the parent method */

    Next = StartNode;
    while ((Next->Asl.ParseOpcode != PARSEOP_METHOD) &&
           (Next->Asl.ParseOpcode != PARSEOP_DEFINITION_BLOCK))
    {
        Next = Next->Asl.Parent;
    }
    MethodOp = Next;

    NewOp->Asl.CompileFlags |= OP_COMPILER_EMITTED;
    NewOp->Asl.Parent = Next;

    /* Insert name after the method name and arguments */

    Next = Next->Asl.Child; /* Name */
    Next = Next->Asl.Next;  /* NumArgs */
    Next = Next->Asl.Next;  /* SerializeRule */

    /*
     * If method is not Serialized, we must make is so, because of the way
     * that Switch() must be implemented -- we cannot allow multiple threads
     * to execute this method concurrently since we need to create local
     * temporary name(s).
     */
    if (Next->Asl.ParseOpcode != PARSEOP_SERIALIZERULE_SERIAL)
    {
        FUNC2 (ASL_REMARK, ASL_MSG_SERIALIZED, MethodOp,
            "Due to use of Switch operator");
        Next->Asl.ParseOpcode = PARSEOP_SERIALIZERULE_SERIAL;
    }

    Next = Next->Asl.Next;  /* SyncLevel */
    Next = Next->Asl.Next;  /* ReturnType */
    Next = Next->Asl.Next;  /* ParameterTypes */

    FUNC6 (Next, NewOp);
    FUNC4 (NewOp, Next);

    /* Create the NameSeg child for the Name node */

    NewOp2 = FUNC9 (PARSEOP_NAMESEG,
        (UINT64) FUNC0 (PredicateValueName));
    FUNC4 (NewOp2, NewOp);
    NewOp2->Asl.CompileFlags |= OP_IS_NAME_DECLARATION;
    NewOp->Asl.Child  = NewOp2;

    /* Create the initial value for the Name. Btype was already validated above */

    switch (Btype)
    {
    case ACPI_BTYPE_INTEGER:

        NewOp2->Asl.Next = FUNC9 (PARSEOP_ZERO,
            (UINT64) 0);
        FUNC4 (NewOp2->Asl.Next, NewOp);
        break;

    case ACPI_BTYPE_STRING:

        NewOp2->Asl.Next = FUNC9 (PARSEOP_STRING_LITERAL,
            (UINT64) FUNC0 (""));
        FUNC4 (NewOp2->Asl.Next, NewOp);
        break;

    case ACPI_BTYPE_BUFFER:

        (void) FUNC11 (NewOp2, FUNC9 (PARSEOP_BUFFER,
            (UINT64) 0));
        Next = NewOp2->Asl.Next;
        FUNC4 (Next, NewOp2);

        (void) FUNC10 (Next, 1, FUNC9 (PARSEOP_ZERO,
            (UINT64) 1));
        FUNC4 (Next->Asl.Child, Next);

        BufferOp = FUNC9 (PARSEOP_DEFAULT_ARG, (UINT64) 0);
        FUNC4 (BufferOp, Next->Asl.Child);
        (void) FUNC11 (Next->Asl.Child, BufferOp);

        FUNC7 (Next->Asl.Child, Next);
        break;

    default:

        break;
    }

    FUNC7 (NewOp2, NewOp);

    /*
     * Transform the Switch() into a While(One)-Break node.
     * And create a Store() node which will be used to save the
     * Switch() value. The store is of the form: Store (Value, _T_x)
     * where _T_x is the temp variable.
     */
    FUNC5 (StartNode, PARSEOP_WHILE);
    NewOp = FUNC8 (PARSEOP_ONE);
    FUNC4 (NewOp, StartNode);
    NewOp->Asl.Next = Predicate->Asl.Next;
    NewOp->Asl.Parent = StartNode;
    StartNode->Asl.Child = NewOp;

    /* Create a Store() node */

    StoreOp = FUNC8 (PARSEOP_STORE);
    FUNC4 (StoreOp, NewOp);
    StoreOp->Asl.Parent = StartNode;
    FUNC6 (NewOp, StoreOp);

    /* Complete the Store subtree */

    StoreOp->Asl.Child = Predicate;
    Predicate->Asl.Parent = StoreOp;

    NewOp = FUNC9 (PARSEOP_NAMESEG,
        (UINT64) FUNC0 (PredicateValueName));
    FUNC4 (NewOp, StoreOp);
    NewOp->Asl.Parent    = StoreOp;
    Predicate->Asl.Next  = NewOp;

    /* Create a Break() node and insert it into the end of While() */

    Conditional = StartNode->Asl.Child;
    while (Conditional->Asl.Next)
    {
        Conditional = Conditional->Asl.Next;
    }

    BreakOp = FUNC8 (PARSEOP_BREAK);
    FUNC4 (BreakOp, NewOp);
    BreakOp->Asl.Parent = StartNode;
    FUNC6 (Conditional, BreakOp);
}