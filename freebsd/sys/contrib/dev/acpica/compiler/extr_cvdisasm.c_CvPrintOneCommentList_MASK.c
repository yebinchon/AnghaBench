#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_4__ {struct TYPE_4__* Next; int /*<<< orphan*/ * Comment; } ;
typedef  TYPE_1__ ACPI_COMMENT_NODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AcpiGbl_RegCommentCache ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void
FUNC3 (
    ACPI_COMMENT_NODE       *CommentList,
    UINT32                  Level)
{
    ACPI_COMMENT_NODE       *Current = CommentList;
    ACPI_COMMENT_NODE       *Previous;


    while (Current)
    {
        Previous = Current;
        if (Current->Comment)
        {
            FUNC0(Level);
            FUNC1("%s\n", Current->Comment);
            Current->Comment = NULL;
        }

        Current = Current->Next;
        FUNC2(AcpiGbl_RegCommentCache, Previous);
    }
}