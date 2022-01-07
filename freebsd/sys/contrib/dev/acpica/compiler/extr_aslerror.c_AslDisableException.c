
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
 int* AslGbl_DisabledMessages ;
 int AslGbl_DisabledMessagesIndex ;
 int printf (char*,...) ;
 scalar_t__ strtoul (char*,int *,int ) ;

ACPI_STATUS
AslDisableException (
    char *MessageIdString)
{
    UINT32 MessageId;




    MessageId = (UINT32) strtoul (MessageIdString, ((void*)0), 0);

    if ((MessageId < 2000) || (MessageId > 6999))
    {
        printf ("\"%s\" is not a valid warning/remark/error ID\n",
            MessageIdString);
        return (AE_BAD_PARAMETER);
    }



    if (AslGbl_DisabledMessagesIndex >= ASL_MAX_DISABLED_MESSAGES)
    {
        printf ("Too many messages have been disabled (max %d)\n",
            ASL_MAX_DISABLED_MESSAGES);
        return (AE_LIMIT);
    }

    AslGbl_DisabledMessages[AslGbl_DisabledMessagesIndex] = MessageId;
    AslGbl_DisabledMessagesIndex++;
    return (AE_OK);
}
