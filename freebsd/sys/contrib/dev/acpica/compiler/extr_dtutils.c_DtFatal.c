
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT16 ;
typedef int DT_FIELD ;


 int ASL_ERROR ;
 int CmCleanupAndExit () ;
 int DtError (int ,int ,int *,char*) ;
 int exit (int) ;

void
DtFatal (
    UINT16 MessageId,
    DT_FIELD *FieldObject,
    char *ExtraMessage)
{

    DtError (ASL_ERROR, MessageId, FieldObject, ExtraMessage);
}
