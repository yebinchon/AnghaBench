
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_2__ {int MessageId; char* MessageIdStr; int MessageReceived; } ;
typedef int ACPI_STATUS ;


 int AE_BAD_PARAMETER ;
 int AE_LIMIT ;
 int AE_OK ;
 int ASL_MAX_DISABLED_MESSAGES ;
 size_t ASL_MAX_EXPECTED_MESSAGES ;
 TYPE_1__* AslGbl_ExpectedMessages ;
 size_t AslGbl_ExpectedMessagesIndex ;
 int FALSE ;
 int printf (char*,...) ;
 scalar_t__ strtoul (char*,int *,int ) ;

ACPI_STATUS
AslExpectException (
    char *MessageIdString)
{
    UINT32 MessageId;




    MessageId = (UINT32) strtoul (MessageIdString, ((void*)0), 0);

    if (MessageId > 6999)
    {
        printf ("\"%s\" is not a valid warning/remark/erro ID\n",
            MessageIdString);
        return (AE_BAD_PARAMETER);
    }



    if (AslGbl_ExpectedMessagesIndex >= ASL_MAX_EXPECTED_MESSAGES)
    {
        printf ("Too many messages have been registered as expected (max %d)\n",
            ASL_MAX_DISABLED_MESSAGES);
        return (AE_LIMIT);
    }

    AslGbl_ExpectedMessages[AslGbl_ExpectedMessagesIndex].MessageId = MessageId;
    AslGbl_ExpectedMessages[AslGbl_ExpectedMessagesIndex].MessageIdStr = MessageIdString;
    AslGbl_ExpectedMessages[AslGbl_ExpectedMessagesIndex].MessageReceived = FALSE;
    AslGbl_ExpectedMessagesIndex++;
    return (AE_OK);
}
