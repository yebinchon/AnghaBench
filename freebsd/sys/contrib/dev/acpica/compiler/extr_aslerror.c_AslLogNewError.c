
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT8 ;
typedef int UINT32 ;
typedef int UINT16 ;
typedef int ASL_ERROR_MSG ;


 size_t ASL_ERROR ;
 int ASL_FILE_STDERR ;
 scalar_t__ ASL_MAX_ERROR_COUNT ;
 int AeAddToErrorLog (int *) ;
 int AePrintException (int ,int *,int *) ;
 scalar_t__ AslGbl_DebugFlag ;
 int AslGbl_ErrorLog ;
 scalar_t__* AslGbl_ExceptionCount ;
 int AslGbl_IgnoreErrors ;
 int AslGbl_NextError ;
 scalar_t__ AslGbl_SourceLine ;
 int AslInitEnode (int **,size_t,int ,int ,int ,int ,int ,char*,char*,char*,int *) ;
 int CmCleanupAndExit () ;
 size_t GetModifiedLevel (size_t,int ) ;
 int exit (int) ;
 int printf (char*,scalar_t__) ;

__attribute__((used)) static void
AslLogNewError (
    UINT8 Level,
    UINT16 MessageId,
    UINT32 LineNumber,
    UINT32 LogicalLineNumber,
    UINT32 LogicalByteOffset,
    UINT32 Column,
    char *Filename,
    char *Message,
    char *SourceLine,
    ASL_ERROR_MSG *SubError)
{
    ASL_ERROR_MSG *Enode = ((void*)0);
    UINT8 ModifiedLevel = GetModifiedLevel (Level, MessageId);


    AslInitEnode (&Enode, ModifiedLevel, MessageId, LineNumber,
        LogicalLineNumber, LogicalByteOffset, Column, Filename, Message,
        SourceLine, SubError);



    AeAddToErrorLog (Enode);

    if (AslGbl_DebugFlag)
    {


        AePrintException (ASL_FILE_STDERR, Enode, ((void*)0));
    }

    AslGbl_ExceptionCount[ModifiedLevel]++;
    if (!AslGbl_IgnoreErrors && AslGbl_ExceptionCount[ASL_ERROR] > ASL_MAX_ERROR_COUNT)
    {
        printf ("\nMaximum error count (%u) exceeded\n", ASL_MAX_ERROR_COUNT);

        AslGbl_SourceLine = 0;
        AslGbl_NextError = AslGbl_ErrorLog;
        CmCleanupAndExit ();
        exit(1);
    }

    return;
}
