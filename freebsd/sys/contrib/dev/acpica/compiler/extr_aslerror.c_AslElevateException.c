
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int ACPI_STATUS ;


 int AE_BAD_PARAMETER ;
 int AE_LIMIT ;
 int AE_OK ;
 int ASL_MAX_DISABLED_MESSAGES ;
 size_t ASL_MAX_ELEVATED_MESSAGES ;
 int* AslGbl_ElevatedMessages ;
 size_t AslGbl_ElevatedMessagesIndex ;
 int printf (char*,...) ;
 scalar_t__ strtoul (char*,int *,int ) ;

ACPI_STATUS
AslElevateException (
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



    if (AslGbl_ElevatedMessagesIndex >= ASL_MAX_ELEVATED_MESSAGES)
    {
        printf ("Too many messages have been registered as elevated (max %d)\n",
            ASL_MAX_DISABLED_MESSAGES);
        return (AE_LIMIT);
    }

    AslGbl_ElevatedMessages[AslGbl_ElevatedMessagesIndex] = MessageId;
    AslGbl_ElevatedMessagesIndex++;
    return (AE_OK);
}
