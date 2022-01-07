
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT32 ;
typedef int UINT16 ;


 int AslLogNewError (int ,int ,int ,int ,int ,int ,char*,char*,char*,int *) ;

void
AslCommonError2 (
    UINT8 Level,
    UINT16 MessageId,
    UINT32 LineNumber,
    UINT32 Column,
    char *SourceLine,
    char *Filename,
    char *ExtraMessage)
{
    AslLogNewError (Level, MessageId, LineNumber, LineNumber, 0, Column,
        Filename, ExtraMessage, SourceLine, ((void*)0));
}
