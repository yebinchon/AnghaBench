
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UINT8 ;
struct TYPE_2__ {int MessageIdStr; int MessageReceived; } ;


 int ASL_ERROR ;
 int ASL_MSG_EXCEPTION_NOT_RECEIVED ;
 int AslError (int ,int ,int *,int ) ;
 TYPE_1__* AslGbl_ExpectedMessages ;
 size_t AslGbl_ExpectedMessagesIndex ;

void
AslCheckExpectedExceptions (
    void)
{
    UINT8 i;


    for (i = 0; i < AslGbl_ExpectedMessagesIndex; ++i)
    {
        if (!AslGbl_ExpectedMessages[i].MessageReceived)
        {
            AslError (ASL_ERROR, ASL_MSG_EXCEPTION_NOT_RECEIVED, ((void*)0),
                AslGbl_ExpectedMessages[i].MessageIdStr);
        }
    }
}
