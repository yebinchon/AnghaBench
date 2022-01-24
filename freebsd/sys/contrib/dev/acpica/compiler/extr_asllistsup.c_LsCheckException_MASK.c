#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT32 ;
struct TYPE_3__ {scalar_t__ LogicalLineNumber; struct TYPE_3__* Next; } ;

/* Variables and functions */
 scalar_t__ ASL_FILE_LISTING_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,TYPE_1__*,char*) ; 
 TYPE_1__* AslGbl_NextError ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*) ; 

void
FUNC2 (
    UINT32                  LineNumber,
    UINT32                  FileId)
{

    if ((!AslGbl_NextError) ||
        (LineNumber < AslGbl_NextError->LogicalLineNumber ))
    {
        return;
    }

    /* Handle multiple errors per line */

    if (FileId == ASL_FILE_LISTING_OUTPUT)
    {
        while (AslGbl_NextError &&
              (LineNumber >= AslGbl_NextError->LogicalLineNumber))
        {
            FUNC0 (FileId, AslGbl_NextError, "\n[****iasl****]\n");
            AslGbl_NextError = AslGbl_NextError->Next;
        }

        FUNC1 (FileId, "\n");
    }
}