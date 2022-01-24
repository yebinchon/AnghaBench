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
typedef  size_t UINT8 ;
typedef  int /*<<< orphan*/  UINT32 ;
typedef  int /*<<< orphan*/  UINT16 ;
typedef  int /*<<< orphan*/  ASL_ERROR_MSG ;

/* Variables and functions */
 size_t ASL_ERROR ; 
 int /*<<< orphan*/  ASL_FILE_STDERR ; 
 scalar_t__ ASL_MAX_ERROR_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ AslGbl_DebugFlag ; 
 int /*<<< orphan*/  AslGbl_ErrorLog ; 
 scalar_t__* AslGbl_ExceptionCount ; 
 int /*<<< orphan*/  AslGbl_IgnoreErrors ; 
 int /*<<< orphan*/  AslGbl_NextError ; 
 scalar_t__ AslGbl_SourceLine ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 size_t FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC7 (
    UINT8                   Level,
    UINT16                  MessageId,
    UINT32                  LineNumber,
    UINT32                  LogicalLineNumber,
    UINT32                  LogicalByteOffset,
    UINT32                  Column,
    char                    *Filename,
    char                    *Message,
    char                    *SourceLine,
    ASL_ERROR_MSG           *SubError)
{
    ASL_ERROR_MSG           *Enode = NULL;
    UINT8                   ModifiedLevel = FUNC4 (Level, MessageId);


    FUNC2 (&Enode, ModifiedLevel, MessageId, LineNumber,
        LogicalLineNumber, LogicalByteOffset, Column, Filename, Message,
        SourceLine, SubError);

    /* Add the new node to the error node list */

    FUNC0 (Enode);

    if (AslGbl_DebugFlag)
    {
        /* stderr is a file, send error to it immediately */

        FUNC1 (ASL_FILE_STDERR, Enode, NULL);
    }

    AslGbl_ExceptionCount[ModifiedLevel]++;
    if (!AslGbl_IgnoreErrors && AslGbl_ExceptionCount[ASL_ERROR] > ASL_MAX_ERROR_COUNT)
    {
        FUNC6 ("\nMaximum error count (%u) exceeded\n", ASL_MAX_ERROR_COUNT);

        AslGbl_SourceLine = 0;
        AslGbl_NextError = AslGbl_ErrorLog;
        FUNC3 ();
        FUNC5(1);
    }

    return;
}