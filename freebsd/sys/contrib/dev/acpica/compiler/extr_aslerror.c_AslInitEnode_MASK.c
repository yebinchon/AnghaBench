#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
typedef  void* UINT32 ;
typedef  int /*<<< orphan*/  UINT16 ;
struct TYPE_9__ {char* Filename; int FilenameLength; int /*<<< orphan*/  SourceFilename; int /*<<< orphan*/ * SourceLine; int /*<<< orphan*/ * Message; struct TYPE_9__* SubError; void* Column; void* LogicalByteOffset; void* LogicalLineNumber; void* LineNumber; int /*<<< orphan*/  MessageId; int /*<<< orphan*/  Level; } ;
struct TYPE_8__ {TYPE_1__* Files; } ;
struct TYPE_7__ {int /*<<< orphan*/  Filename; } ;
typedef  TYPE_2__ ASL_GLOBAL_FILE_NODE ;
typedef  TYPE_3__ ASL_ERROR_MSG ;

/* Variables and functions */
 size_t ASL_FILE_SOURCE_OUTPUT ; 
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5 (
    ASL_ERROR_MSG           **InputEnode,
    UINT8                   Level,
    UINT16                  MessageId,
    UINT32                  LineNumber,
    UINT32                  LogicalLineNumber,
    UINT32                  LogicalByteOffset,
    UINT32                  Column,
    char                    *Filename,
    char                    *ExtraMessage,
    char                    *SourceLine,
    ASL_ERROR_MSG           *SubError)
{
    ASL_ERROR_MSG           *Enode;
    ASL_GLOBAL_FILE_NODE    *FileNode;


    *InputEnode = FUNC2 (sizeof (ASL_ERROR_MSG));
    Enode = *InputEnode;
    Enode->Level                = Level;
    Enode->MessageId            = MessageId;
    Enode->LineNumber           = LineNumber;
    Enode->LogicalLineNumber    = LogicalLineNumber;
    Enode->LogicalByteOffset    = LogicalByteOffset;
    Enode->Column               = Column;
    Enode->SubError             = SubError;
    Enode->Message              = NULL;
    Enode->SourceLine           = NULL;
    Enode->Filename             = NULL;

    if (ExtraMessage)
    {
        /* Allocate a buffer for the message and a new error node */

        Enode->Message = FUNC1 (FUNC4 (ExtraMessage) + 1);

        /* Keep a copy of the extra message */

        FUNC3 (Enode->Message, ExtraMessage);
    }

    if (SourceLine)
    {
        Enode->SourceLine = FUNC2 (FUNC4 (SourceLine) + 1);
        FUNC3 (Enode->SourceLine, SourceLine);
    }


    if (Filename)
    {
        Enode->Filename = Filename;
        Enode->FilenameLength = FUNC4 (Filename);
        if (Enode->FilenameLength < 6)
        {
            Enode->FilenameLength = 6;
        }

        FileNode = FUNC0 ();
        if (!FileNode)
        {
            return;
        }

        Enode->SourceFilename =
            FileNode->Files[ASL_FILE_SOURCE_OUTPUT].Filename;
    }
}