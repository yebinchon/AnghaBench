
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT8 ;
typedef size_t UINT32 ;
typedef int UINT16 ;
struct TYPE_2__ {size_t MessageId; int MessageReceived; } ;
typedef int BOOLEAN ;


 size_t AeBuildFullExceptionCode (int ,int ) ;
 TYPE_1__* AslGbl_ExpectedMessages ;
 size_t AslGbl_ExpectedMessagesIndex ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOLEAN
AslIsExceptionExpected (
    UINT8 Level,
    UINT16 MessageId)
{
    UINT32 EncodedMessageId;
    UINT32 i;




    EncodedMessageId = AeBuildFullExceptionCode (Level, MessageId);
    for (i = 0; i < AslGbl_ExpectedMessagesIndex; i++)
    {


        if (EncodedMessageId == AslGbl_ExpectedMessages[i].MessageId)
        {
            return (AslGbl_ExpectedMessages[i].MessageReceived = TRUE);
        }
    }

    return (FALSE);
}
