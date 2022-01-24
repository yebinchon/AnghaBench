#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int UINT32 ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_LIMIT ; 
 int /*<<< orphan*/  AE_OK ; 
 int ASL_MAX_DISABLED_MESSAGES ; 
 size_t ASL_MAX_ELEVATED_MESSAGES ; 
 int* AslGbl_ElevatedMessages ; 
 size_t AslGbl_ElevatedMessagesIndex ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC2 (
    char                    *MessageIdString)
{
    UINT32                  MessageId;


    /* Convert argument to an integer and validate it */

    MessageId = (UINT32) FUNC1 (MessageIdString, NULL, 0);

    if (MessageId > 6999)
    {
        FUNC0 ("\"%s\" is not a valid warning/remark/erro ID\n",
            MessageIdString);
        return (AE_BAD_PARAMETER);
    }

    /* Insert value into the global expected message array */

    if (AslGbl_ElevatedMessagesIndex >= ASL_MAX_ELEVATED_MESSAGES)
    {
        FUNC0 ("Too many messages have been registered as elevated (max %d)\n",
            ASL_MAX_DISABLED_MESSAGES);
        return (AE_LIMIT);
    }

    AslGbl_ElevatedMessages[AslGbl_ElevatedMessagesIndex] = MessageId;
    AslGbl_ElevatedMessagesIndex++;
    return (AE_OK);
}