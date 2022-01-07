
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;


 int ASL_ERROR ;
 int ASL_MSG_BUFFER_ALLOCATION ;
 int AslAbort () ;
 int AslError (int ,int ,int *,int *) ;
 int memset (char*,int ,int) ;
 int printf (char*,int,int) ;
 char* realloc (char*,int) ;

void
UtReallocLineBuffers (
    char **Buffer,
    UINT32 OldSize,
    UINT32 NewSize)
{

    *Buffer = realloc (*Buffer, NewSize);
    if (*Buffer)
    {
        memset (*Buffer + OldSize, 0, NewSize - OldSize);
        return;
    }

    printf ("Could not increase line buffer size from %u to %u\n",
        OldSize, NewSize);

    AslError (ASL_ERROR, ASL_MSG_BUFFER_ALLOCATION, ((void*)0), ((void*)0));
    AslAbort ();
}
