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
 int /*<<< orphan*/  ASL_PARSE_TREE_HEADER2 ; 
 int /*<<< orphan*/  ASL_TREE_OUTPUT ; 
 int ASL_WALK_VISIT_DB_SEPARATELY ; 
 int ASL_WALK_VISIT_DOWNWARD ; 
 int /*<<< orphan*/  AslGbl_CurrentDB ; 
 int /*<<< orphan*/  CgAmlWriteWalk ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC3 (
    void)
{

    /* Generate the AML output file */

    FUNC2 (AslGbl_CurrentDB,
        ASL_WALK_VISIT_DOWNWARD | ASL_WALK_VISIT_DB_SEPARATELY,
        CgAmlWriteWalk, NULL, NULL);

    FUNC1 (ASL_TREE_OUTPUT, ASL_PARSE_TREE_HEADER2);
    FUNC0 (AslGbl_CurrentDB);
}