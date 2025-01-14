
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;
typedef struct TYPE_13__ TYPE_11__ ;


typedef scalar_t__ UINT8 ;
typedef scalar_t__ UINT32 ;
struct TYPE_20__ {scalar_t__ Checksum; scalar_t__ Length; int AslCompilerRevision; int AslCompilerId; scalar_t__ OemRevision; int OemTableId; int OemId; scalar_t__ Revision; int Signature; } ;
struct TYPE_19__ {struct TYPE_19__* Next; scalar_t__ Comment; } ;
struct TYPE_15__ {scalar_t__ Integer; scalar_t__ String; } ;
struct TYPE_17__ {int FinalAmlOffset; scalar_t__ AmlSubtreeLength; scalar_t__ CloseBraceComment; TYPE_5__* CommentList; scalar_t__ ParseOpName; TYPE_1__ Value; TYPE_4__* Next; TYPE_4__* Child; } ;
struct TYPE_18__ {TYPE_3__ Asl; } ;
struct TYPE_16__ {scalar_t__ Filename; } ;
struct TYPE_14__ {int Handle; } ;
struct TYPE_13__ {TYPE_2__ Asl; } ;
typedef int ACPI_TABLE_HEADER ;
typedef TYPE_4__ ACPI_PARSE_OBJECT ;
typedef TYPE_5__ ACPI_COMMENT_NODE ;


 int ACPI_CA_VERSION ;
 int ACPI_COPY_NAMESEG (int ,scalar_t__) ;
 scalar_t__ ACPI_SIG_XXXX ;
 scalar_t__ ASL_CREATOR_ID ;
 size_t ASL_FILE_AML_OUTPUT ;
 scalar_t__ AcpiGbl_CaptureComments ;
 int AcpiGbl_TableSig ;
 TYPE_12__* AslGbl_Files ;
 TYPE_11__* AslGbl_ParseTreeRoot ;
 scalar_t__ AslGbl_RevisionOverride ;
 TYPE_6__ AslGbl_TableHeader ;
 int CgLocalWriteAmlData (TYPE_4__*,TYPE_6__*,int) ;
 int CvDbgPrint (char*,scalar_t__) ;
 int ftell (int ) ;
 int memcpy (int ,scalar_t__,scalar_t__) ;
 int memset (TYPE_6__*,int ,int) ;
 scalar_t__ strlen (scalar_t__) ;
 scalar_t__ strrchr (scalar_t__,char) ;

__attribute__((used)) static void
CgWriteTableHeader (
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_PARSE_OBJECT *Child;
    UINT32 CommentLength;
    ACPI_COMMENT_NODE *Current;


    memset (&AslGbl_TableHeader, 0, sizeof (ACPI_TABLE_HEADER));



    Child = Op->Asl.Child;



    Child = Child->Asl.Next;
    if (AcpiGbl_CaptureComments)
    {
        ACPI_COPY_NAMESEG (AcpiGbl_TableSig, Child->Asl.Value.String);
        Child->Asl.Value.String = ACPI_SIG_XXXX;
    }

    ACPI_COPY_NAMESEG (AslGbl_TableHeader.Signature, Child->Asl.Value.String);



    Child = Child->Asl.Next;
    AslGbl_TableHeader.Revision = (UINT8) Child->Asl.Value.Integer;



    if (AslGbl_RevisionOverride)
    {
        AslGbl_TableHeader.Revision = AslGbl_RevisionOverride;
    }



    Child = Child->Asl.Next;
    memcpy (AslGbl_TableHeader.OemId, Child->Asl.Value.String,
        strlen (Child->Asl.Value.String));



    Child = Child->Asl.Next;
    memcpy (AslGbl_TableHeader.OemTableId, Child->Asl.Value.String,
        strlen (Child->Asl.Value.String));



    Child = Child->Asl.Next;
    AslGbl_TableHeader.OemRevision = (UINT32) Child->Asl.Value.Integer;



    ACPI_COPY_NAMESEG (AslGbl_TableHeader.AslCompilerId, ASL_CREATOR_ID);



    AslGbl_TableHeader.AslCompilerRevision = ACPI_CA_VERSION;



    AslGbl_TableHeader.Length = sizeof (ACPI_TABLE_HEADER) +
        Op->Asl.AmlSubtreeLength;



    if (AcpiGbl_CaptureComments)
    {
        CvDbgPrint ("Calculating comment lengths for %s in write header\n",
            Op->Asl.ParseOpName);





        AslGbl_TableHeader.Length += strrchr (AslGbl_ParseTreeRoot->Asl.Filename, '.')
            - AslGbl_ParseTreeRoot->Asl.Filename + 1 + 3 + 3;

        Op->Asl.AmlSubtreeLength +=
            strlen (AslGbl_ParseTreeRoot->Asl.Filename) + 3;

        CvDbgPrint ("     Length: %u\n",
            (UINT32) strlen (AslGbl_ParseTreeRoot->Asl.Filename) + 3);

        if (Op->Asl.CommentList)
        {
            Current = Op->Asl.CommentList;
            while (Current)
            {
                CommentLength = strlen (Current->Comment)+3;
                CvDbgPrint ("Length of standard comment): %d\n", CommentLength);
                CvDbgPrint ("    Comment string: %s\n\n", Current->Comment);
                AslGbl_TableHeader.Length += CommentLength;
                Op->Asl.AmlSubtreeLength += CommentLength;
                Current = Current->Next;
                CvDbgPrint ("    Length: %u\n", CommentLength);
            }
        }
        if (Op->Asl.CloseBraceComment)
        {
            CommentLength = strlen (Op->Asl.CloseBraceComment)+3;
            CvDbgPrint ("Length of inline comment +3: %d\n", CommentLength);
            CvDbgPrint ("    Comment string: %s\n\n", Op->Asl.CloseBraceComment);
            AslGbl_TableHeader.Length += CommentLength;
            Op->Asl.AmlSubtreeLength += CommentLength;
            CvDbgPrint ("    Length: %u\n", CommentLength);
        }
    }

    AslGbl_TableHeader.Checksum = 0;
    Op->Asl.FinalAmlOffset = ftell (AslGbl_Files[ASL_FILE_AML_OUTPUT].Handle);



    CgLocalWriteAmlData (Op, &AslGbl_TableHeader, sizeof (ACPI_TABLE_HEADER));
    memset (&AslGbl_TableHeader, 0, sizeof (ACPI_TABLE_HEADER));
}
