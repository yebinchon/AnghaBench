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
struct TYPE_4__ {int /*<<< orphan*/ * Next; } ;
typedef  TYPE_1__ ACPI_COMMENT_NODE ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 

ACPI_COMMENT_NODE *
FUNC1 (
    void)
{
   ACPI_COMMENT_NODE        *NewCommentNode;


   NewCommentNode = FUNC0 (sizeof (ACPI_COMMENT_NODE));
   NewCommentNode->Next = NULL;
   return (NewCommentNode);
}