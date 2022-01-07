
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT32 ;
typedef scalar_t__ UINT16 ;


 size_t ACPI_ARRAY_LENGTH (char**) ;
 scalar_t__ ASL_MSG_MAIN_COMPILER_END ;
 scalar_t__ ASL_MSG_PREPROCESSOR ;
 scalar_t__ ASL_MSG_PREPROCESSOR_END ;
 scalar_t__ ASL_MSG_TABLE_COMPILER ;
 scalar_t__ ASL_MSG_TABLE_COMPILER_END ;
 char** AslCompilerMsgs ;
 char** AslPreprocessorMsgs ;
 char** AslTableCompilerMsgs ;

const char *
AeDecodeMessageId (
    UINT16 MessageId)
{
    UINT32 Index;
    const char **MessageTable;




    if (MessageId <= ASL_MSG_MAIN_COMPILER_END)
    {
        MessageTable = AslCompilerMsgs;
        Index = MessageId;

        if (Index >= ACPI_ARRAY_LENGTH (AslCompilerMsgs))
        {
            return ("[Unknown ASL Compiler exception ID]");
        }
    }



    else if (MessageId <= ASL_MSG_TABLE_COMPILER_END)
    {
        MessageTable = AslTableCompilerMsgs;
        Index = MessageId - ASL_MSG_TABLE_COMPILER;

        if (Index >= ACPI_ARRAY_LENGTH (AslTableCompilerMsgs))
        {
            return ("[Unknown Table Compiler exception ID]");
        }
    }



    else if (MessageId <= ASL_MSG_PREPROCESSOR_END)
    {
        MessageTable = AslPreprocessorMsgs;
        Index = MessageId - ASL_MSG_PREPROCESSOR;

        if (Index >= ACPI_ARRAY_LENGTH (AslPreprocessorMsgs))
        {
            return ("[Unknown Preprocessor exception ID]");
        }
    }



    else
    {
        return ("[Unknown exception/component ID]");
    }

    return (MessageTable[Index]);
}
