#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT32 ;
struct TYPE_2__ {int /*<<< orphan*/  Filename; } ;

/* Variables and functions */
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ASL_ERROR ; 
 size_t ASL_FILE_INPUT ; 
 int /*<<< orphan*/  ASL_MSG_MEMORY_ALLOCATION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  AslGbl_CurrentColumn ; 
 int /*<<< orphan*/  AslGbl_CurrentLineNumber ; 
 TYPE_1__* AslGbl_Files ; 
 int /*<<< orphan*/  AslGbl_InputByteCount ; 
 int /*<<< orphan*/  AslGbl_LogicalLineNumber ; 
 int /*<<< orphan*/  AslGbl_TotalAllocated ; 
 int /*<<< orphan*/  AslGbl_TotalAllocations ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void *
FUNC4 (
    UINT32                  Size)
{
    void                    *Allocated;


    Allocated = FUNC0 (Size);
    if (!Allocated)
    {
        FUNC1 (ASL_ERROR, ASL_MSG_MEMORY_ALLOCATION,
            AslGbl_CurrentLineNumber, AslGbl_LogicalLineNumber,
            AslGbl_InputByteCount, AslGbl_CurrentColumn,
            AslGbl_Files[ASL_FILE_INPUT].Filename, NULL);

        FUNC2 ();
        FUNC3 (1);
    }

    AslGbl_TotalAllocations++;
    AslGbl_TotalAllocated += Size;
    return (Allocated);
}