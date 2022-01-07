
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_10__ {char* TableSignature; char* TableId; } ;
struct TYPE_7__ {char* String; scalar_t__* Buffer; } ;
struct TYPE_8__ {void* ParseOpcode; TYPE_3__* Next; TYPE_1__ Value; int Filename; TYPE_3__* Child; } ;
struct TYPE_9__ {TYPE_2__ Asl; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_SIZE ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 scalar_t__ ACPI_FAILURE (int ) ;
 scalar_t__ ACPI_NAMESEG_SIZE ;
 scalar_t__ ACPI_OEM_ID_SIZE ;
 int ACPI_OEM_TABLE_ID_SIZE ;
 int ASL_ERROR ;
 int ASL_FILE_AML_OUTPUT ;
 int ASL_MSG_OEM_ID ;
 int ASL_MSG_OEM_TABLE_ID ;
 int ASL_MSG_OUTPUT_FILE_OPEN ;
 int ASL_MSG_TABLE_SIGNATURE ;
 int AslError (int ,int ,TYPE_3__*,char*) ;
 char* AslGbl_DirectoryPath ;
 TYPE_5__* AslGbl_FilesList ;
 char* AslGbl_OutputFilenamePrefix ;
 char* AslGbl_TableId ;
 char* AslGbl_TableSignature ;
 scalar_t__ AslGbl_UseDefaultAmlFilename ;
 int FlCloseFile (int ) ;
 int FlDeleteFile (int ) ;
 int FlOpenAmlOutputFile (char*) ;
 int FlSwitchFileSet (int ) ;
 void* PARSEOP_DEFAULT_ARG ;
 int UtConvertBackslashes (char*) ;
 char* UtLocalCacheCalloc (int) ;
 int isalnum (int) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
OpnDoDefinitionBlock (
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_PARSE_OBJECT *Child;
    ACPI_SIZE Length;
    UINT32 i;
    char *Filename;
    ACPI_STATUS Status;
    Child = Op->Asl.Child;
    if (Child->Asl.Value.Buffer &&
        *Child->Asl.Value.Buffer &&
        (AslGbl_UseDefaultAmlFilename))
    {




        FlSwitchFileSet (Op->Asl.Filename);





        Filename = UtLocalCacheCalloc (strlen (AslGbl_DirectoryPath) +
            strlen ((char *) Child->Asl.Value.Buffer) + 1);



        strcpy (Filename, AslGbl_DirectoryPath);
        strcat (Filename, (char *) Child->Asl.Value.Buffer);

        AslGbl_OutputFilenamePrefix = Filename;
        UtConvertBackslashes (AslGbl_OutputFilenamePrefix);
        FlCloseFile (ASL_FILE_AML_OUTPUT);
        FlDeleteFile (ASL_FILE_AML_OUTPUT);
        Status = FlOpenAmlOutputFile (AslGbl_OutputFilenamePrefix);
        if (ACPI_FAILURE (Status))
        {
            AslError (ASL_ERROR, ASL_MSG_OUTPUT_FILE_OPEN, ((void*)0), ((void*)0));
            return;
        }
    }

    Child->Asl.ParseOpcode = PARSEOP_DEFAULT_ARG;



    Child = Child->Asl.Next;
    Child->Asl.ParseOpcode = PARSEOP_DEFAULT_ARG;
    if (Child->Asl.Value.String)
    {
        AslGbl_FilesList->TableSignature = Child->Asl.Value.String;
        AslGbl_TableSignature = Child->Asl.Value.String;
        if (strlen (AslGbl_TableSignature) != ACPI_NAMESEG_SIZE)
        {
            AslError (ASL_ERROR, ASL_MSG_TABLE_SIGNATURE, Child,
                "Length must be exactly 4 characters");
        }

        for (i = 0; i < ACPI_NAMESEG_SIZE; i++)
        {
            if (!isalnum ((int) AslGbl_TableSignature[i]))
            {
                AslError (ASL_ERROR, ASL_MSG_TABLE_SIGNATURE, Child,
                    "Contains non-alphanumeric characters");
            }
        }
    }



    Child = Child->Asl.Next;
    Child->Asl.ParseOpcode = PARSEOP_DEFAULT_ARG;







    Child = Child->Asl.Next;
    Child->Asl.ParseOpcode = PARSEOP_DEFAULT_ARG;
    if (Child->Asl.Value.String &&
        strlen (Child->Asl.Value.String) > ACPI_OEM_ID_SIZE)
    {
        AslError (ASL_ERROR, ASL_MSG_OEM_ID, Child,
            "Length cannot exceed 6 characters");
    }



    Child = Child->Asl.Next;
    Child->Asl.ParseOpcode = PARSEOP_DEFAULT_ARG;
    if (Child->Asl.Value.String)
    {
        Length = strlen (Child->Asl.Value.String);
        if (Length > ACPI_OEM_TABLE_ID_SIZE)
        {
            AslError (ASL_ERROR, ASL_MSG_OEM_TABLE_ID, Child,
                "Length cannot exceed 8 characters");
        }

        AslGbl_TableId = UtLocalCacheCalloc (Length + 1);
        strcpy (AslGbl_TableId, Child->Asl.Value.String);
        AslGbl_FilesList->TableId = AslGbl_TableId;





        for (i = 0; i < Length; i++)
        {
            if (!isalnum ((int) AslGbl_TableId[i]))
            {
                AslGbl_TableId[i] = '_';
            }
        }
    }



    Child = Child->Asl.Next;
    Child->Asl.ParseOpcode = PARSEOP_DEFAULT_ARG;
}
