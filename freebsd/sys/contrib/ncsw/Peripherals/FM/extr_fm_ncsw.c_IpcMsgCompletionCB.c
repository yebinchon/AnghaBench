
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int * uint32_t ;
typedef int * t_Handle ;
typedef int * t_Error ;


 int FALSE ;
 int UNUSED (int *) ;
 int blockingFlag ;

__attribute__((used)) static void IpcMsgCompletionCB(t_Handle h_Fm,
                               uint8_t *p_Msg,
                               uint8_t *p_Reply,
                               uint32_t replyLength,
                               t_Error status)
{
    UNUSED(h_Fm);UNUSED(p_Msg);UNUSED(p_Reply);UNUSED(replyLength);UNUSED(status);
    blockingFlag = FALSE;
}
