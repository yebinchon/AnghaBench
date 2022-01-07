
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT32 ;
typedef int UINT16 ;


 scalar_t__ AslIsExceptionIgnored (int ,int ) ;
 int AslLogNewError (int ,int ,int ,int ,int ,int ,char*,char*,int *,int *) ;

void
AslCommonError (
    UINT8 Level,
    UINT16 MessageId,
    UINT32 CurrentLineNumber,
    UINT32 LogicalLineNumber,
    UINT32 LogicalByteOffset,
    UINT32 Column,
    char *Filename,
    char *ExtraMessage)
{


    if (AslIsExceptionIgnored (Level, MessageId))
    {
        return;
    }

    AslLogNewError (Level, MessageId, CurrentLineNumber, LogicalLineNumber,
        LogicalByteOffset, Column, Filename, ExtraMessage,
        ((void*)0), ((void*)0));
}
