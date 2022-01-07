
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;


 int ASL_DEBUG_OUTPUT ;
 scalar_t__ AslGbl_CurrentLineBuffer ;
 scalar_t__ AslGbl_ExpressionTokenBuffer ;
 scalar_t__ AslGbl_LineBufPtr ;
 int AslGbl_LineBufferSize ;
 scalar_t__ AslGbl_MacroTokenBuffer ;
 scalar_t__ AslGbl_MainTokenBuffer ;
 int DbgPrint (int ,char*,int,int) ;
 int UtReallocLineBuffers (scalar_t__*,int,int) ;

void
UtExpandLineBuffers (
    void)
{
    UINT32 NewSize;




    NewSize = AslGbl_LineBufferSize * 2;
    if (AslGbl_CurrentLineBuffer)
    {
        DbgPrint (ASL_DEBUG_OUTPUT,
            "Increasing line buffer size from %u to %u\n",
            AslGbl_LineBufferSize, NewSize);
    }

    UtReallocLineBuffers (&AslGbl_CurrentLineBuffer, AslGbl_LineBufferSize, NewSize);
    UtReallocLineBuffers (&AslGbl_MainTokenBuffer, AslGbl_LineBufferSize, NewSize);
    UtReallocLineBuffers (&AslGbl_MacroTokenBuffer, AslGbl_LineBufferSize, NewSize);
    UtReallocLineBuffers (&AslGbl_ExpressionTokenBuffer, AslGbl_LineBufferSize, NewSize);

    AslGbl_LineBufPtr = AslGbl_CurrentLineBuffer;
    AslGbl_LineBufferSize = NewSize;
}
