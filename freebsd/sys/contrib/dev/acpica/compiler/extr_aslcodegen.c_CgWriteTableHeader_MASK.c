#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
typedef  scalar_t__ UINT8 ;
typedef  scalar_t__ UINT32 ;
struct TYPE_20__ {scalar_t__ Checksum; scalar_t__ Length; int /*<<< orphan*/  AslCompilerRevision; int /*<<< orphan*/  AslCompilerId; scalar_t__ OemRevision; int /*<<< orphan*/  OemTableId; int /*<<< orphan*/  OemId; scalar_t__ Revision; int /*<<< orphan*/  Signature; } ;
struct TYPE_19__ {struct TYPE_19__* Next; scalar_t__ Comment; } ;
struct TYPE_15__ {scalar_t__ Integer; scalar_t__ String; } ;
struct TYPE_17__ {int /*<<< orphan*/  FinalAmlOffset; scalar_t__ AmlSubtreeLength; scalar_t__ CloseBraceComment; TYPE_5__* CommentList; scalar_t__ ParseOpName; TYPE_1__ Value; TYPE_4__* Next; TYPE_4__* Child; } ;
struct TYPE_18__ {TYPE_3__ Asl; } ;
struct TYPE_16__ {scalar_t__ Filename; } ;
struct TYPE_14__ {int /*<<< orphan*/  Handle; } ;
struct TYPE_13__ {TYPE_2__ Asl; } ;
typedef  int /*<<< orphan*/  ACPI_TABLE_HEADER ;
typedef  TYPE_4__ ACPI_PARSE_OBJECT ;
typedef  TYPE_5__ ACPI_COMMENT_NODE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_CA_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ ACPI_SIG_XXXX ; 
 scalar_t__ ASL_CREATOR_ID ; 
 size_t ASL_FILE_AML_OUTPUT ; 
 scalar_t__ AcpiGbl_CaptureComments ; 
 int /*<<< orphan*/  AcpiGbl_TableSig ; 
 TYPE_12__* AslGbl_Files ; 
 TYPE_11__* AslGbl_ParseTreeRoot ; 
 scalar_t__ AslGbl_RevisionOverride ; 
 TYPE_6__ AslGbl_TableHeader ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,char) ; 

__attribute__((used)) static void
FUNC8 (
    ACPI_PARSE_OBJECT       *Op)
{
    ACPI_PARSE_OBJECT       *Child;
    UINT32                  CommentLength;
    ACPI_COMMENT_NODE       *Current;


    FUNC5 (&AslGbl_TableHeader, 0, sizeof (ACPI_TABLE_HEADER));

    /* AML filename */

    Child = Op->Asl.Child;

    /* Signature */

    Child = Child->Asl.Next;

    /*
     * For ASL-/ASL+ converter: replace the table signature with
     * "XXXX" and save the original table signature. This results in an AML
     * file with the signature "XXXX". The converter should remove this AML
     * file. In the event where this AML file does not get deleted, the
     * "XXXX" table signature prevents this AML file from running on the AML
     * interpreter.
     */
    if (AcpiGbl_CaptureComments)
    {
        FUNC0 (AcpiGbl_TableSig, Child->Asl.Value.String);
        Child->Asl.Value.String = ACPI_SIG_XXXX;
    }

    FUNC0 (AslGbl_TableHeader.Signature, Child->Asl.Value.String);

    /* Revision */

    Child = Child->Asl.Next;
    AslGbl_TableHeader.Revision = (UINT8) Child->Asl.Value.Integer;

    /* Command-line Revision override */

    if (AslGbl_RevisionOverride)
    {
        AslGbl_TableHeader.Revision = AslGbl_RevisionOverride;
    }

    /* OEMID */

    Child = Child->Asl.Next;
    FUNC4 (AslGbl_TableHeader.OemId, Child->Asl.Value.String,
        FUNC6 (Child->Asl.Value.String));

    /* OEM TableID */

    Child = Child->Asl.Next;
    FUNC4 (AslGbl_TableHeader.OemTableId, Child->Asl.Value.String,
        FUNC6 (Child->Asl.Value.String));

    /* OEM Revision */

    Child = Child->Asl.Next;
    AslGbl_TableHeader.OemRevision = (UINT32) Child->Asl.Value.Integer;

    /* Compiler ID */

    FUNC0 (AslGbl_TableHeader.AslCompilerId, ASL_CREATOR_ID);

    /* Compiler version */

    AslGbl_TableHeader.AslCompilerRevision = ACPI_CA_VERSION;

    /* Table length. Checksum zero for now, will rewrite later */

    AslGbl_TableHeader.Length = sizeof (ACPI_TABLE_HEADER) +
        Op->Asl.AmlSubtreeLength;

    /* Calculate the comment lengths for this definition block parseOp */

    if (AcpiGbl_CaptureComments)
    {
        FUNC2 ("Calculating comment lengths for %s in write header\n",
            Op->Asl.ParseOpName);

        /*
         * Take the filename without extensions, add 3 for the new extension
         * and another 3 for the a908 bytecode and null terminator.
         */
        AslGbl_TableHeader.Length += FUNC7 (AslGbl_ParseTreeRoot->Asl.Filename, '.')
            - AslGbl_ParseTreeRoot->Asl.Filename + 1 + 3 + 3;

        Op->Asl.AmlSubtreeLength +=
            FUNC6 (AslGbl_ParseTreeRoot->Asl.Filename) + 3;

        FUNC2 ("     Length: %u\n",
            (UINT32) FUNC6 (AslGbl_ParseTreeRoot->Asl.Filename) + 3);

        if (Op->Asl.CommentList)
        {
            Current = Op->Asl.CommentList;
            while (Current)
            {
                CommentLength = FUNC6 (Current->Comment)+3;
                FUNC2 ("Length of standard comment): %d\n", CommentLength);
                FUNC2 ("    Comment string: %s\n\n", Current->Comment);
                AslGbl_TableHeader.Length += CommentLength;
                Op->Asl.AmlSubtreeLength += CommentLength;
                Current = Current->Next;
                FUNC2 ("    Length: %u\n", CommentLength);
            }
        }
        if (Op->Asl.CloseBraceComment)
        {
            CommentLength = FUNC6 (Op->Asl.CloseBraceComment)+3;
            FUNC2 ("Length of inline comment +3: %d\n", CommentLength);
            FUNC2 ("    Comment string: %s\n\n", Op->Asl.CloseBraceComment);
            AslGbl_TableHeader.Length += CommentLength;
            Op->Asl.AmlSubtreeLength += CommentLength;
            FUNC2 ("    Length: %u\n", CommentLength);
        }
    }

    AslGbl_TableHeader.Checksum = 0;
    Op->Asl.FinalAmlOffset = FUNC3 (AslGbl_Files[ASL_FILE_AML_OUTPUT].Handle);

    /* Write entire header and clear the table header global */

    FUNC1 (Op, &AslGbl_TableHeader, sizeof (ACPI_TABLE_HEADER));
    FUNC5 (&AslGbl_TableHeader, 0, sizeof (ACPI_TABLE_HEADER));
}