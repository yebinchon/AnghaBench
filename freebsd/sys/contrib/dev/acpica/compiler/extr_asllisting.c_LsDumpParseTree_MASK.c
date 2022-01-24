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

/* Variables and functions */
 char* ASL_PARSE_TREE_HEADER1 ; 
 int /*<<< orphan*/  ASL_TREE_OUTPUT ; 
 int /*<<< orphan*/  ASL_WALK_VISIT_DOWNWARD ; 
 int /*<<< orphan*/  AslGbl_DebugFlag ; 
 int /*<<< orphan*/  AslGbl_ParseTreeRoot ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  LsTreeWriteWalk ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC2 (
    void)
{

    if (!AslGbl_DebugFlag)
    {
        return;
    }

    FUNC0 (ASL_TREE_OUTPUT, "\nOriginal parse tree from parser:\n\n");
    FUNC0 (ASL_TREE_OUTPUT, ASL_PARSE_TREE_HEADER1);

    FUNC1 (AslGbl_ParseTreeRoot, ASL_WALK_VISIT_DOWNWARD,
        LsTreeWriteWalk, NULL, NULL);

    FUNC0 (ASL_TREE_OUTPUT, ASL_PARSE_TREE_HEADER1);
}